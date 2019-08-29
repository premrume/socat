import pygal
from django.db import connection
from django.db.models import Count
from collections import namedtuple
from operator import itemgetter
import itertools as it

from socat.models import Unit
from socat.models import Survey
from socat.models import Response

def _namedtuplefetchall(cursor):
        desc = cursor.description
        nt_result = namedtuple('Result', [col[0] for col in desc])
        return [nt_result(*row) for row in cursor.fetchall()]

class Chart3a():

    def __init__(self, **kwargs):
        self.chart = pygal.Dot(**kwargs,x_label_rotation=30)
        self.chart.x_labels = [ 'a', 'b', 'c', 'd', 'e', 'f' ]
        self.unit_id = kwargs.pop('unit_id')
        self.unit = Unit.objects.get(id=self.unit_id)

    def get_data(self):

        data = {}
        for survey in Survey.objects.filter(unit=self.unit):
           counts=[0 for i in range(len(self.chart.x_labels))]
           for i, hello in enumerate(self.chart.x_labels):
             count = Response.objects.filter(survey=survey).filter(item__item_order=hello).distinct().count()
             counts[i] = count
           data[survey.name] = counts
        return data

    def generate(self):
        # Get chart data
        chart_data = self.get_data()

        # Add data to chart
        for key, value in chart_data.items():
            self.chart.add(key, value)

        # Return the rendered SVG
        return self.chart.render(is_unicode=True)

class Chart3b():

    def __init__(self, **kwargs):
        self.chart = pygal.Line(**kwargs,x_label_rotation=30)
        self.unit_id = kwargs.pop('unit_id')

    def get_data(self):
        data = {}
        cursor = connection.cursor()
        cursor.execute('\
                 SELECT c.category, a.name as SURVEY_NAME \
                 , ROUND(AVG(i.item_weight),0) AS RATING \
                 FROM socat_survey AS a \
                 INNER JOIN socat_response AS r ON a.id = r.survey_id \
                 INNER JOIN socat_question AS q ON q.id = r.question_id \
                 INNER JOIN socat_item AS i ON i.id = r.item_id \
                 INNER JOIN socat_category_question AS cq ON cq.question_id = q.id \
                 INNER JOIN socat_category AS c ON c.id = cq.category_id  and c.questionnaire_id = a.questionnaire_id\
                 INNER JOIN socat_unit AS u ON u.id = a.unit_id \
                 WHERE u.id = %s AND i.item_weight != -1 \
                 GROUP BY c.category, a.name \
                 ORDER BY c.category, a.name \
        ', [self.unit_id])

        results = _namedtuplefetchall(cursor)

        categories = {r[0] for r in results}
        surveys = {r[1] for r in results}

        self.chart.x_labels = list(categories)
        #for i in surveys:
        #   data[i]=[0] * len(categories)

        data = {}
        for s in surveys:
           ratings = []
           for r in results:
              if r.survey_name == s:
                  ratings.append(r.rating)
           data[s] = ratings

        return data

    def generate(self):
        # Get chart data
        chart_data = self.get_data()

        # Add data to chart
        for key, value in chart_data.items():
            self.chart.add(key, value)

        # Return the rendered SVG
        return self.chart.render(is_unicode=True)
