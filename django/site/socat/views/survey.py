from django.views import generic
from django.views import View
from django.shortcuts import get_object_or_404, render, redirect, reverse

from socat.models import Survey
from socat.models import Questionnaire

from socat.forms import SurveyCreateForm
from socat.forms import SurveyUpdateForm

class SurveyList(generic.ListView):
    model = Survey
    template_name = 'socat/survey_list.html'
    def get_queryset(self):
        return Survey.objects.filter()

class SurveyCreate(View):
    model = Survey
    template_name = 'socat/survey_create.html'
    form_class = SurveyCreateForm

    def get(self, request, *args, **kwargs):
         form = self.form_class()
         context = {
           'form' : form
         }
         return render(request, self.template_name, context)

    def post(self, request, *args, **kwargs):
         form = self.form_class(request.POST)
         context = {
           'form' : form
         }
         if form.is_valid():
             survey_id = form.save()
             return redirect(reverse('response', kwargs={"survey_id": survey_id}))

         return render(request, self.template_name, context)

class SurveyUpdate(View):
    model = Survey 
    template_name = 'socat/survey_update.html'
    form_class = SurveyUpdateForm

    def get_object(self):
       id = self.kwargs.get('survey_id')
       survey = None
       if id is not None:
         survey = get_object_or_404(Survey, id=id)
       return survey

    def get(self, request, survey_id=None, *args, **kwargs):
         context = {}
         survey = self.get_object()
         if survey is not None:
           form = self.form_class(survey=survey)
           context = {
             'survey' : survey,
             'form' : form,
           }
         return render(request, self.template_name, context)

    def post(self, request, survey_id=None, *args, **kwargs):
         context = {}
         survey = self.get_object()
         if survey is not None:
           form = self.form_class(request.POST, survey=survey)
           if form.is_valid():
             form.save()
             return redirect(reverse('response', kwargs={"survey_id": survey.id }))
         return render(request, self.template_name, context)
