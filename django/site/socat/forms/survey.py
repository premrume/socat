import datetime
from django import forms
from django.forms import models
from bootstrap_datepicker_plus import DatePickerInput
 
import logging
logger = logging.getLogger(__name__)

from socat.models import Survey
from socat.models import Questionnaire
from socat.models import Question
from socat.models import Item
from socat.models import Unit

class SurveyCreateForm(forms.ModelForm):
    class Meta:
        model = Survey
        fields = [
           'questionnaire',
           'unit',
           'survey_date',
           'first_name',
           'last_name',
           'rank',
           'position',
           'reporting',
           'prior_aor',
           'prior_engagement',
           'mission_start',
           'mission_end',
           'mission_type',
           'mission_objective',
        ]

    def __init__(self, *args, **kwargs):
        super(SurveyCreateForm, self).__init__(*args, *kwargs)

        BOOLEAN_CHOICES = ((True, 'Yes'), (False, 'No'))

        self.fields['questionnaire'] = models.ModelChoiceField(
                  label='Select Questionnaire:',
                  queryset=Questionnaire.objects.all(),
                  widget=forms.RadioSelect(),
                  required=True,
                  empty_label=None,
                  initial=None,
                )
        self.fields['unit'] = models.ModelChoiceField(
                  label='Select Partner Nation Unit:',
                  queryset=Unit.objects.all(),
                  widget=forms.Select(),
                  required=True,
                  empty_label=None,
                  initial=None,
                )

        self.fields['survey_date'] = forms.DateTimeField(
                  label='Survey Date:',
                  help_text='Survey creation date',
                  widget=DatePickerInput(),
                  required=True,
                  initial=None,
                )
        self.fields['last_name'] = forms.CharField(
                  label='Last Name:',
                  help_text='Last name of person creating survey',
                  widget=forms.TextInput(),
                  required=True,
                  initial=None
        )
        self.fields['first_name'] = forms.CharField(
                  label='First Name:',
                  help_text='First name of person creating survey',
                  widget=forms.TextInput(),
                  required=True,
                  initial=None
        )
        self.fields['rank'] = forms.CharField(
                  label='Rank:',
                  help_text='Rank of person creating survey',
                  widget=forms.TextInput(),
                  required=True,
                  initial=None
        )
        self.fields['position'] = forms.CharField(
                  label='Position:',
                  help_text='Position of person creating survey',
                  widget=forms.TextInput(),
                  required=True,
                  initial=None
        )
        self.fields['reporting'] = forms.CharField(
                  label='Reporting Organization/Unit:',
                  widget=forms.TextInput(),
                  required=True,
                  initial=None
        )
        self.fields['mission_start'] = forms.DateTimeField(
                  label='Mission Start Date:',
                  widget=DatePickerInput(),
                  required=True,
                  initial=None,
                )
        self.fields['mission_end'] = forms.DateTimeField(
                  label='Mission End Date:',
                  widget=DatePickerInput(),
                  required=True,
                  initial=None,
                )
        self.fields['mission_type'] = forms.CharField(
                  label='Mission Type:',
                  widget=forms.TextInput(),
                  required=True,
                  initial=None
        )
        self.fields['mission_objective'] = forms.CharField(
                  label='Mission Objective:',
                  widget=forms.Textarea(attrs={
                         'class': 'narrative',
                         'rows':3,
                  }),
                  required=False,
                  initial=None
                )

        self.fields['prior_aor'] = forms.IntegerField(
                  label='Prior AOR (years):',
                  widget=forms.NumberInput(),
                  required=True,
                  initial=None
        )
        self.fields['prior_engagement'] = forms.ChoiceField(
                  choices = BOOLEAN_CHOICES,
                  label='Prior Engagement:',
                  widget=forms.RadioSelect(),
                  required=True,
                  initial=None
        )

    def clean(self):
        cleaned_data = super(SurveyCreateForm, self).clean()
        return cleaned_data

    def save(self, commit=True):
        survey = super(SurveyCreateForm, self).save(commit=False)
        # Questionnaire_PartnerForceCountry_PartnerForceAbbrev_SurveyReportingUnit _SurveyCreateDate)
        now = datetime.datetime.now()
        today = now.strftime('%Y-%m-%d')
        survey.name='{}_{}_{}_{}_{}'.format(
           survey.questionnaire.questionnaire,
           survey.unit.country,
           survey.unit.unit_abbrev,
           survey.reporting,
           today
        )
        survey.save()
        return survey.id

class SurveyUpdateForm(forms.ModelForm):
    class Meta:
        model = Survey
        fields = [
           'state',
           'name',
           'last_name',
           'first_name',
           'rank',
           'position',
           'reporting',
           'prior_aor',
           'prior_engagement',
           'mission_start',
           'mission_end',
           'mission_type',
           'mission_objective',
        ]

    def __init__(self, *args, **kwargs):
        self.survey = kwargs.pop('survey')
        super(SurveyUpdateForm, self).__init__(*args, *kwargs)
        BOOLEAN_CHOICES = ((True, 'Yes'), (False, 'No'))
        self.fields['state'] = forms.ChoiceField(
                  choices = Survey.STATE_CHOICES,
                  label='State:',
                  widget=forms.RadioSelect(),
                  required=True,
                  initial=self.survey.state,
                )
        self.fields['name'] = forms.CharField(
                  label='Survey Name:',
                  widget=forms.TextInput(),
                  required=True,
                  initial=self.survey.name
        )
        self.fields['last_name'] = forms.CharField(
                  label='Last Name:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.survey.last_name
        )
        self.fields['first_name'] = forms.CharField(
                  label='First Name:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.survey.first_name
        )
        self.fields['rank'] = forms.CharField(
                  label='Rank:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.survey.rank
        )
        self.fields['position'] = forms.CharField(
                  label='Position:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.survey.position
        )
        self.fields['reporting'] = forms.CharField(
                  label='Reporting Organization/Unit:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.survey.reporting
        )
        self.fields['prior_aor'] = forms.IntegerField(
                  label='Prior AOR (years):',
                  widget=forms.NumberInput(),
                  required=False,
                  initial=self.survey.prior_aor
        )
        self.fields['prior_engagement'] = forms.ChoiceField(
                  choices = BOOLEAN_CHOICES,
                  label='Prior Engagement:',
                  widget=forms.RadioSelect(),
                  required=False,
                  initial=self.survey.prior_engagement
        )
        self.fields['mission_start'] = forms.DateTimeField(
                  label='Mission Start Date:',
                  widget=DatePickerInput(),
                  required=False,
                  initial=self.survey.mission_start,
                )
        self.fields['mission_end'] = forms.DateTimeField(
                  label='Mission End Date:',
                  widget=DatePickerInput(),
                  required=False,
                  initial=self.survey.mission_end,
                )
        self.fields['mission_type'] = forms.CharField(
                  label='Mission Type:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.survey.mission_type,
        )
        self.fields['mission_objective'] = forms.CharField(
                  label='Mission Objective:',
                  widget=forms.Textarea(attrs={
                         'class': 'narrative',
                         'rows':3,
                  }),
                  required=False,
                  initial=self.survey.mission_objective,
                )

    def clean(self):
        cleaned_data = super(SurveyUpdateForm, self).clean()
        return cleaned_data

    def save(self, commit=True):
        # no magic at this point i am over the fm
        changes = super(SurveyUpdateForm, self).save(commit=False)
        self.survey.state=changes.state
        self.survey.name=changes.name
        self.survey.last_name=changes.last_name
        self.survey.first_name=changes.first_name
        self.survey.rank=changes.rank
        self.survey.position=changes.position
        self.survey.save()
