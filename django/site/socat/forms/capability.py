from django import forms
from django.forms import models
from bootstrap_datepicker_plus import DatePickerInput

import logging
logger = logging.getLogger(__name__)

from socat.models import Survey
from socat.models import Category
from socat.models import Capability

class CapabilityForm(forms.ModelForm):
    class Meta(object):
        model = Survey
        fields = ()

    def __init__(self, *args, **kwargs):
        categories = kwargs.pop("categories")
        self.survey = kwargs.pop("survey")

        super(CapabilityForm, self).__init__(*args, *kwargs)

        for category in categories:
          try:
            capability = Capability.objects.get(survey=self.survey, category=category)
          except:
            capability = Capability()

          self.fields['observation_%d' % category.id] = forms.CharField(
                  label=category.category,
                  help_text=category.observation_help,
                  widget=forms.Textarea(attrs={
                         'class': 'narrative',
                         'cols':80, 
                         'rows':4, 
                  }),
                  required=False,
                  initial=capability.observation,
                )

        self.fields['end_state'] = forms.CharField(
                  label='Overall End State:',
                  help_text='*Progress towards achieving measures of effectiveness (MOE) & measures of performance (MOPs)\r\n *Highlight PF’s capability to conduct assigned missions\r\n *Recommended way ahead for the PF (future engagements and BPC opportunities) \r\n',
                  widget=forms.Textarea(attrs={
                         'class': 'narrative',
                         'cols':80, 
                         'rows':4, 
                  }),
                  required=False,
                  initial=self.survey.end_state
        )
        # TODO:  the help_text is not normalized in the database
        #        possibly this is a separate table in the future?
        self.fields['gaps'] = forms.CharField(
                  label='Capability Gaps:',
                  help_text='*Significant capacity / capability gaps that affect the PF’s ability to effectively conduct assigned missions (gaps may include authorities, intelligence, support, manpower, training, mobility, weapons, facilities, C2, etc.)\r\n *Identify gaps that prevent, or delay, the PF from achieving MOEs & MOPs',
                  widget=forms.Textarea(attrs={
                         'class': 'narrative',
                         'cols':80, 
                         'rows':4, 
                  }),
                  required=False,
                  initial=self.survey.gaps
        )

    def clean(self):
        cleaned_data = super(CapabilityForm, self).clean()
        return cleaned_data

    def _save_response(self):
        # primary loop
        for field_name, field_value in list(self.cleaned_data.items()):
          print('xxxxxxxxxxxxxxxx')
          print(field_name)
          print(field_value)
          if field_name.startswith("gaps"):
            self.survey.gaps = field_value
          if field_name.startswith("end_state"):
            self.survey.end_state = field_value
          if field_name.startswith("observation_"):
            category_id = int(field_name.split("_")[1])
            category = Category.objects.get(id=category_id)
            try:
                   capability = Capability.objects.get(survey=self.survey,category=category)
            except Capability.DoesNotExist:
                   #expect this
                   capability = Capability()
            capability.survey = self.survey
            capability.category = category
            capability.observation = field_value
            capability.save()
        self.survey.save()

    def save(self, commit=True):
        self._save_response()
