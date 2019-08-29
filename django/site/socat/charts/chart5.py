import pygal
from collections import namedtuple
from django.db import connection

from django.db.models import Count

from socat.models import Survey
from socat.models import Questionnaire
from socat.models import Question
from socat.models import Response
from socat.models import Item
from socat.models import Category

def _namedtuplefetchall(cursor):
        desc = cursor.description
        nt_result = namedtuple('Result', [col[0] for col in desc])
        return [nt_result(*row) for row in cursor.fetchall()]

def _count_narrative_only(cursor, a_id):
        cursor.execute('\
           SELECT count(distinct q.question_order) as narrative_only \
                 FROM socat_questionnaire AS qs \
                 INNER JOIN socat_survey AS a ON a.questionnaire_id = qs.id \
                 INNER JOIN socat_question AS q ON q.questionnaire_id = qs.id \
                 LEFT OUTER JOIN socat_item AS i ON i.question_id = q.id \
                 WHERE a.id = %s and i.id is null \
        ', [a_id])
        result = _namedtuplefetchall(cursor)
        return  (result[0].narrative_only)

def _count_question_only(cursor, a_id):
        # TODO work on the selects ...
        cursor.execute('\
           SELECT count(distinct q.question_order) as question_only \
                 FROM socat_questionnaire AS qs \
                 INNER JOIN socat_survey AS a ON a.questionnaire_id = qs.id \
                 INNER JOIN socat_question AS q ON q.questionnaire_id = qs.id \
                 LEFT OUTER JOIN socat_item AS i ON i.question_id = q.id \
                 WHERE a.id = %s AND i.id is not null \
        ', [a_id])
        result = _namedtuplefetchall(cursor)
        return  (result[0].question_only)

def _count_narrative_complete(cursor, a_id):
        # TODO work on the selects ...
        cursor.execute('\
          SELECT count(r.id) as completed \
                 FROM socat_survey AS a  \
                 INNER JOIN socat_response AS r ON a.id = r.survey_id  \
                 INNER JOIN socat_question AS q ON q.id = r.question_id  \
                 WHERE a.id = %s  and LENGTH(r.narrative) > 0 \
        ', [a_id])
        result = _namedtuplefetchall(cursor)
        return  (result[0].completed)

def _count_question_complete(cursor, a_id):
        # TODO work on the selects ...
        cursor.execute('\
          SELECT count(r.id) as completed \
                 FROM socat_survey AS a  \
                 INNER JOIN socat_response AS r ON a.id = r.survey_id  \
                 INNER JOIN socat_question AS q ON q.id = r.question_id  \
                 WHERE a.id = %s AND r.item_id is not null \
        ', [a_id])
        result = _namedtuplefetchall(cursor)
        return  (result[0].completed)


class Chart5a():

    def __init__(self, **kwargs):
        self.chart = pygal.SolidGauge(**kwargs, half_pie=True, inner_radius=0.50)
        self.id = kwargs.pop('id')

    def get_data(self):
        cursor = connection.cursor()
        question_only = _count_question_only(cursor, self.id)
        question_complete = _count_question_complete(cursor, self.id)
        narrative_only = _count_narrative_only(cursor, self.id)
        narrative_complete = _count_narrative_complete(cursor, self.id)
        total_questions = question_only + narrative_only
        data = {}
        data['Questions']  =  [ {'value': question_complete , 'max_value': question_only}]
        data['Narratives'] =  [ {'value': narrative_complete, 'max_value': total_questions}]

        return data

    def generate(self):
        # Get chart data
        chart_data = self.get_data()

        # Add data to chart
        for key, value in chart_data.items():
            self.chart.add(key, value)

        # Return the rendered SVG
        return self.chart.render(is_unicode=True)

class Chart5b():

    def __init__(self, **kwargs):
        self.chart = pygal.Dot(**kwargs,x_label_rotation=30)
        self.id = kwargs.pop('id')
        self.chart.x_labels = [ 'a', 'b', 'c', 'd', 'e', 'f' ]

    def get_data(self):

        data = {}
        for survey in Survey.objects.filter(id = self.id):
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

class Chart5c():

    def __init__(self, **kwargs):
        self.chart = pygal.Bar(**kwargs)
        self.id = kwargs.pop('id')

    def get_data(self):
        cursor = connection.cursor()
        cursor.execute('\
             SELECT a.name,  i.item_order, \
                 COUNT(i.item) as COUNT, \
                 SUM(i.item_weight) as WEIGHT \
                 FROM socat_survey AS a  \
                 INNER JOIN socat_response AS r ON a.id = r.survey_id  \
                 INNER JOIN socat_question AS q ON q.id = r.question_id  \
                 INNER JOIN socat_item AS i ON i.id = r.item_id  \
                 WHERE a.id = %s  and i.item_weight != -1 \
                 GROUP BY a.name, i.item_order  \
                 ORDER BY a.name, i.item_order  \
        ', [self.id])

        results = _namedtuplefetchall(cursor)
        self.chart.x_labels = []
        weights= []
        counts= []
        for r in results:
               self.chart.x_labels.append(r.item_order)
               weights.append(r.weight)
               counts.append(r.count)
        
        data = {}
        data['WEIGHT'] = weights
        data['COUNT'] = counts

        return data

    def generate(self):
        # Get chart data
        chart_data = self.get_data()

        # Add data to chart
        for key, value in chart_data.items():
            self.chart.add(key, value)

        # Return the rendered SVG
        return self.chart.render(is_unicode=True)

class Chart5d():

    def __init__(self, **kwargs):
        self.chart = pygal.Bar(**kwargs)
        self.id = kwargs.pop('id')

    def get_data(self):
        cursor = connection.cursor()
        cursor.execute('\
             SELECT a.name \
                 ,SUM(i.item_weight) as WEIGHT \
                 ,COUNT(*) AS COUNT \
                 ,ROUND(AVG(i.item_weight),0) AS AVERAGE \
                 FROM socat_survey AS a  \
                 INNER JOIN socat_response AS r ON a.id = r.survey_id  \
                 INNER JOIN socat_question AS q ON q.id = r.question_id  \
                 INNER JOIN socat_item AS i ON i.id = r.item_id  \
                 WHERE a.id = %s  and i.item_weight != -1 \
                 GROUP BY a.name  \
                 ORDER BY a.name  \
        ', [self.id])

        results = _namedtuplefetchall(cursor)
        self.chart.x_labels = []
        weights= []
        averages= []
        counts= []
        for r in results:
               self.chart.x_labels.append(r.name)
               weights.append(r.weight)
               counts.append(r.count)
               averages.append(r.average)
        
        data = {}
        data['COUNT']  = counts
        data['WEIGHT'] = weights
        data['RATING'] = averages

        return data

    def generate(self):
        # Get chart data
        chart_data = self.get_data()

        # Add data to chart
        for key, value in chart_data.items():
            self.chart.add(key, value)

        # Return the rendered SVG
        return self.chart.render(is_unicode=True)

class Chart5x():

    def __init__(self, **kwargs):
        self.chart = pygal.Bar(**kwargs,x_label_rotation=30)
        self.id = kwargs.pop('id')

    def get_data(self):
        cursor = connection.cursor()
        cursor.execute('\
                 SELECT a.name \
                 , c.category \
                 , ROUND(AVG(i.item_weight),0) AS AVERAGE \
                 FROM socat_survey AS a \
                 INNER JOIN socat_response AS r ON a.id = r.survey_id \
                 INNER JOIN socat_question AS q ON q.id = r.question_id \
                 INNER JOIN socat_item AS i ON i.id = r.item_id \
                 INNER JOIN socat_category_question AS cq ON cq.question_id = q.id \
                 INNER JOIN socat_category AS c ON c.id = cq.category_id  and c.questionnaire_id = a.questionnaire_id \
                 WHERE a.id = %s AND i.item_weight != -1 \
                 GROUP BY a.name, c.category \
                 ORDER BY a.name, c.category \
        ', [self.id])

        results = _namedtuplefetchall(cursor)
        cat = ''
        self.chart.x_labels = []
        weights= []
        averages= []
        counts= []
        for r in results:
             if cat != r.category:
               cat = r.category
               self.chart.x_labels.append(r.category)
               averages.append(r.average)
        
        data = {}
        data['RATING'] = averages

        return data

    def generate(self):
        # Get chart data
        chart_data = self.get_data()

        # Add data to chart
        for key, value in chart_data.items():
            self.chart.add(key, value)

        # Return the rendered SVG
        return self.chart.render(is_unicode=True)

