from django.views import View
from django.shortcuts import get_object_or_404, render, redirect, reverse

from django.db import connection
from collections import namedtuple

from socat.models import Survey
from socat.models import Questionnaire
from socat.models import Capability

def _namedtuplefetchall(cursor):
    desc = cursor.description
    nt_result = namedtuple('Result', [col[0] for col in desc])
    return [nt_result(*row) for row in cursor.fetchall()]


class AssessmentSummaryView(View):
    model = Survey
    template_name = 'socat/assessment_summary.html'
    def get_queryset(self):
        return Survey.objects.filter()

    def get_object(self):
         survey_id = self.kwargs.get('survey_id')
         return survey_id

    def get(self, request, survey_id, *args, **kwargs):
         survey = Survey.objects.get(id=survey_id)
         context = {
           'survey' : survey,
         }
         return render(request, self.template_name, context)

class AssessmentCapabilityView(View):
    model = Survey
    template_name = 'socat/assessment_capability.html'
    def get_queryset(self):
        return Survey.objects.filter()

    def get_object(self):
         survey_id = self.kwargs.get('survey_id')
         return survey_id

    def get(self, request, survey_id, *args, **kwargs):
         survey = Survey.objects.get(id=survey_id)
         #capability_list = Capability.objects.filter(survey=survey)
         cursor = connection.cursor()
         cursor.execute('\
                 SELECT a.name \
                 , c.category \
                 , ROUND(AVG(i.item_weight)*25,0) AS AVERAGE \
                 , x.observation \
                 , c.category_order \
                 FROM socat_survey AS a \
                 INNER JOIN socat_response AS r ON a.id = r.survey_id \
                 INNER JOIN socat_question AS q ON q.id = r.question_id \
                 INNER JOIN socat_item AS i ON i.id = r.item_id \
                 INNER JOIN socat_category_question AS cq ON cq.question_id = q.id \
                 INNER JOIN socat_category AS c ON c.id = cq.category_id  and c.questionnaire_id = a.questionnaire_id \
                 JOIN socat_capability AS x ON x.category_id = c.id  and x.survey_id = a.id \
                 WHERE a.id = %s AND i.item_weight != -1 \
                 GROUP BY a.name, c.category_order, c.category, x.observation \
                 ORDER BY a.name, c.category_order, c.category, x.observation\
         ', [survey_id])

         results = _namedtuplefetchall(cursor)
         sum=0
         count=0
         for r in results:
            sum += r.average
            count+=1

         end_state = 0
         if (sum > 0) and (count > 0):
            end_state = round(sum/count*25)

         context = {
           'survey' : survey,
           'capability_list' : results,
           'end_state' : end_state
         }
         return render(request, self.template_name, context)
