from django.views import generic
from django.views import View
from django.shortcuts import get_object_or_404, render, redirect, reverse

from socat.models import Survey
from socat.models import Questionnaire
from socat.models import Question
from socat.models import Response

from socat.forms import ResponseForm

class ResponseView(View):
    model = Survey 
    template_name = 'socat/response.html'
    form_class = ResponseForm

    def get_object(self):
         survey_id = self.kwargs.get('survey_id')
         return survey_id

    def get(self, request, survey_id, *args, **kwargs):
         survey = Survey.objects.get(id=survey_id)
         questions = Question.objects.filter(questionnaire=survey.questionnaire)

         form = self.form_class(survey=survey, questions=questions)
         context = {
           'survey' : survey,
           'form' : form,
         }
         return render(request, self.template_name, context)

    def post(self, request, survey_id, *args, **kwargs):
         survey = Survey.objects.get(id=survey_id)
         questions = Question.objects.filter(questionnaire=survey.questionnaire)
         form = self.form_class(request.POST, survey=survey, questions=questions)
         context = {
           'survey' : survey,
           'form' : form,
         }
         if form.is_valid():
             form.save()
             return redirect(reverse('survey-update', kwargs={"survey_id": survey.id }))

         return render(request, self.template_name, context)
