from django import forms
from django.forms import models
from bootstrap_datepicker_plus import DatePickerInput

import logging
logger = logging.getLogger(__name__)

from socat.models import Survey
from socat.models import Questionnaire
from socat.models import Question
from socat.models import Item
from socat.models import Response

class ResponseForm(forms.ModelForm):
    class Meta(object):
        model = Survey
        fields = ()

    def __init__(self, *args, **kwargs):
        questions = kwargs.pop("questions")
        self.survey = kwargs.pop("survey")

        super(ResponseForm, self).__init__(*args, *kwargs)

        for question in questions:
          try:
            response = Response.objects.get(survey=self.survey, question=question)
          except:
            # default to e (unknown) to cause red flag on statistics
            try:
              item=Item.objects.get(question=question, item_order='e')
            except:
              item=Item()
            response = Response()
            response.item = item

          self.fields['question_%d' % question.id] = models.ModelChoiceField(
                  label=question,
                  queryset=Item.objects.filter(question=question),
                  widget=forms.RadioSelect(),
                  required=False,
                  empty_label=None,
                  initial=response.item
                )
          self.fields['narrative_%d' % question.id] = forms.CharField(
                  label='{}. Narrative'.format(question.question_order),
                  widget=forms.Textarea(attrs={
                         'class': 'narrative',
                         'rows':3, 
                  }),
                  required=False,
                  initial=response.narrative,
                )

    def clean(self):
        cleaned_data = super(ResponseForm, self).clean()
        return cleaned_data

    def _save_response(self):
        # primary loop
        for field_name, field_value in list(self.cleaned_data.items()):
            if field_name.startswith("question_"):
                 q_id = int(field_name.split("_")[1])
                 item = field_value
                 # 2nd loop look for matching narrative
                 for narrative_name, narrative_value in list(self.cleaned_data.items()):
                   if narrative_name.startswith("narrative_"):
                        if len(narrative_value) > 0:
                          n_id = int(narrative_name.split("_")[1])
                          if n_id == q_id:
                            narrative = narrative_value
                        else:
                          narrative=None
                 question = Question.objects.get(id=q_id)
                 try:
                   response = Response.objects.get(survey=self.survey,question=question)
                 except Response.DoesNotExist:
                   #expect this on new survey
                   response = Response()

                 response.survey = self.survey
                 response.question = question
                 response.item = item
                 response.narrative = narrative
                 response.save()

    def save(self, commit=True):
        self._save_response()
