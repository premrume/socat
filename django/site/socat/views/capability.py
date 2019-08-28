from django.views import generic
from django.views import View
from django.shortcuts import get_object_or_404, render, redirect, reverse

from socat.models import Survey
from socat.models import Category
from socat.models import Capability

from socat.forms import CapabilityForm

class CapabilityView(View):
    model = Survey 
    template_name = 'socat/capability.html'
    form_class = CapabilityForm

    def get_object(self):
         survey_id = self.kwargs.get('survey_id')
         return survey_id

    def get(self, request, survey_id, *args, **kwargs):
         survey = Survey.objects.get(id=survey_id)
         categories = Category.objects.filter(questionnaire=survey.questionnaire)
         form = self.form_class(survey=survey, categories=categories)
         context = {
           'survey' : survey,
           'form' : form,
         }
         return render(request, self.template_name, context)

    def post(self, request, survey_id, *args, **kwargs):
         survey = Survey.objects.get(id=survey_id)
         categories = Category.objects.filter(questionnaire=survey.questionnaire)
         form = self.form_class(request.POST, survey=survey, categories=categories)
         context = {
           'survey' : survey,
           'form' : form,
         }
         if form.is_valid():
             form.save()
             return redirect(reverse('survey-update', kwargs={"survey_id": survey.id }))

         return render(request, self.template_name, context)
