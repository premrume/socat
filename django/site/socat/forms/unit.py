from django import forms
from django.forms import models

from bootstrap_datepicker_plus import DatePickerInput

import logging
logger = logging.getLogger(__name__)

from socat.models import Unit

class UnitCreateForm(forms.ModelForm):
    class Meta:
        model = Unit
        fields = [
        'comms',
        'country',
        'region',
        'diagram',
        'engagement',
        'engagement_type',
        'force',
        'leader_text',
        'location_1',
        'location_2',
        'location_3',
        'mgrs_1',
        'mgrs_2',
        'mgrs_3',
        'mobility',
        'night_vision',
        'affiliation',
        'mission',
        'country_objectives',
        'embassy_objectives',
        'socsouth_objectives',
        'southcom_objectives',
        'unit',
        'unit_abbrev',
        'unit_type',
        'weapons',
        ]

    def __init__(self, *args, **kwargs):
        super(UnitCreateForm, self).__init__(*args, *kwargs)

        self.fields['unit'] = forms.CharField(
                  label='Partner Force:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=None,
        )
        self.fields['unit_type'] = forms.ChoiceField(
                  choices = Unit.UNIT_TYPE_CHOICES,
                  label='Unit Type:',
                  widget=forms.Select(attrs={'class': 'radio-inline'}),
                  required=False,
                  initial=None
                )
        self.fields['unit_abbrev'] = forms.CharField(
                  label='Unit Abbreviation:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=None
        )
        self.fields['engagement'] = forms.ChoiceField(
                  choices = Unit.ENGAGEMENT_CHOICES,
                  label='Engagement:',
                  widget=forms.Select(attrs={'class': 'radio-inline'}),
                  required=False,
                  initial=None
                )
        self.fields['engagement_type'] = forms.ChoiceField(
                  choices = Unit.ENGAGEMENT_TYPE_CHOICES,
                  label='Engagement Type:',
                  widget=forms.Select(attrs={'class': 'radio-inline'}),
                  required=False,
                  initial=None
                )
        self.fields['affiliation'] = forms.ChoiceField(
                  choices = Unit.AFFILIATION_CHOICES,
                  label='Affiliation:',
                  widget=forms.Select(attrs={'class': 'radio-inline'}),
                  required=False,
                  initial=None
                )

        self.fields['country'] = forms.CharField(
                  label='Country:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=None
        )
        self.fields['region'] = forms.ChoiceField(
                  label='Region:',
                  choices = Unit.REGION_CHOICES,
                  widget=forms.Select(attrs={'class': 'radio-inline'}),
                  required=False,
                  initial=None
        )
        self.fields['location_1'] = forms.CharField(
                  label='Location Info (1 of 3):',
                  widget=forms.TextInput(),
                  required=False,
                  initial=None
                )
        self.fields['location_2'] = forms.CharField(
                  label='Location Info (2 of 3):',
                  widget=forms.TextInput(),
                  required=False,
                  initial=None
                )
        self.fields['location_3'] = forms.CharField(
                  label='Location Info (3 of 3):',
                  widget=forms.TextInput(),
                  required=False,
                  initial=None
                )
        self.fields['mgrs_1'] = forms.CharField(
                  label='MGRS (1 of 3):',
                  widget=forms.TextInput(),
                  required=False,
                  initial=None
                )
        self.fields['mgrs_2'] = forms.CharField(
                  label='MGRS (2 of 3):',
                  widget=forms.TextInput(),
                  required=False,
                  initial=None
                )
        self.fields['mgrs_3'] = forms.CharField(
                  label='MGRS (3 of 3):',
                  widget=forms.TextInput(),
                  required=False,
                  initial=None
                )

        self.fields['leader_text'] = forms.CharField(
                  label='Leader(s) Rank/Name:',
                  widget=forms.Textarea(attrs={
                         'class': 'narrative',
                         'rows':3,
                  }),
                  required=False,
                  initial=None
                )
        self.fields['country_objectives'] = forms.CharField(
                  label='Country Objectives:',
                  widget=forms.Textarea(),
                  required=False,
                  initial=None
        )
        self.fields['southcom_objectives'] = forms.CharField(
                  label='SOUTHCOM Objectives:',
                  widget=forms.Textarea(),
                  required=False,
                  initial=None
        )
        self.fields['embassy_objectives'] = forms.CharField(
                  label='Embassy Objectives:',
                  widget=forms.Textarea(),
                  required=False,
                  initial=None
        )
        self.fields['socsouth_objectives'] = forms.CharField(
                  label='SOCSOUTH Objectives:',
                  widget=forms.Textarea(),
                  required=False,
                  initial=None
        )
        self.fields['mission'] = forms.CharField(
                  label='Mission:',
                  widget=forms.Textarea(),
                  required=False,
                  initial=None
        )

        self.fields['force'] = forms.CharField(
                  label='Force:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=None
        )
        self.fields['weapons'] = forms.CharField(
                  label='Weapons:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=None
        )
        self.fields['comms'] = forms.CharField(
                  label='Comms:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=None
        )
        self.fields['mobility'] = forms.CharField(
                  label='Mobility:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=None
        )
        self.fields['night_vision'] = forms.CharField(
                  label='Night Vision/Optics:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=None
        )
        self.fields['diagram'] = forms.CharField(
                  label='Full link to Diagram:',
                  help_text='Example:  https://www.w3schools.com/images/w3schools_green.jpg',
                  widget=forms.TextInput(),
                  required=False,
                  initial=None
        )

    def clean(self):
        cleaned_data = super(UnitCreateForm, self).clean()
        return cleaned_data

    def save(self, commit=True):
        unit = super(UnitCreateForm, self).save(commit=False)
        unit.save()
        return unit.id

class UnitUpdateForm(forms.ModelForm):
    class Meta:
        model = Unit
        fields = [
        'comms',
        'country',
        'region',
        'diagram',
        'engagement',
        'engagement_type',
        'force',
        'leader_text',
        'location_1',
        'location_2',
        'location_3',
        'mgrs_1',
        'mgrs_2',
        'mgrs_3',
        'mobility',
        'night_vision',
        'affiliation',
        'mission',
        'country_objectives',
        'embassy_objectives',
        'socsouth_objectives',
        'southcom_objectives',
        'unit',
        'unit_abbrev',
        'unit_type',
        'weapons',
        ]

    def __init__(self, *args, **kwargs):
        self.unit = kwargs.pop('unit')
        super(UnitUpdateForm, self).__init__(*args, *kwargs)

        self.fields['unit'] = forms.CharField(
                  label='Unit Name:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.unit.unit
        )
        self.fields['unit_type'] = forms.ChoiceField(
                  choices = Unit.UNIT_TYPE_CHOICES,
                  label='Unit Type:',
                  widget=forms.Select(attrs={'class': 'radio-inline'}),
                  required=False,
                  initial=self.unit.unit_type
                )
        self.fields['unit_abbrev'] = forms.CharField(
                  label='Unit Short Name (Abbreviation):',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.unit.unit_abbrev
        )
        self.fields['engagement'] = forms.ChoiceField(
                  choices = Unit.ENGAGEMENT_CHOICES,
                  label='Engagement:',
                  widget=forms.Select(attrs={'class': 'radio-inline'}),
                  required=False,
                  initial=self.unit.engagement
                )
        self.fields['engagement_type'] = forms.ChoiceField(
                  choices = Unit.ENGAGEMENT_TYPE_CHOICES,
                  label='Engagement Type:',
                  widget=forms.Select(attrs={'class': 'radio-inline'}),
                  required=False,
                  initial=self.unit.engagement_type
                )
        self.fields['affiliation'] = forms.ChoiceField(
                  choices = Unit.AFFILIATION_CHOICES,
                  label='Affiliation:',
                  widget=forms.Select(attrs={'class': 'radio-inline'}),
                  required=False,
                  initial=self.unit.affiliation
                )

        self.fields['country'] = forms.CharField(
                  label='Country:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.unit.country
        )
        self.fields['region'] = forms.ChoiceField(
                  choices = Unit.REGION_CHOICES,
                  label='Region:',
                  widget=forms.Select(attrs={'class': 'radio-inline'}),
                  required=False,
                  initial=self.unit.region
                )
        self.fields['location_1'] = forms.CharField(
                  label='Location Info (1 of 3):',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.unit.location_1
                )
        self.fields['location_2'] = forms.CharField(
                  label='Location Info (2 of 3):',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.unit.location_2
                )
        self.fields['location_3'] = forms.CharField(
                  label='Location Info (3 of 3):',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.unit.location_3
                )
        self.fields['mgrs_1'] = forms.CharField(
                  label='MGRS (1 of 3):',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.unit.mgrs_1
                )
        self.fields['mgrs_2'] = forms.CharField(
                  label='MGRS (2 of 3):',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.unit.mgrs_2
                )
        self.fields['mgrs_3'] = forms.CharField(
                  label='MGRS (3 of 3):',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.unit.mgrs_3
                )

        self.fields['leader_text'] = forms.CharField(
                  label='Leader(s) Rank/Name:',
                  widget=forms.Textarea(attrs={
                         'class': 'narrative',
                         'rows':3,
                  }),
                  required=False,
                  initial=self.unit.leader_text
                )
        self.fields['country_objectives'] = forms.CharField(
                  label='Country Objectives:',
                  widget=forms.Textarea(),
                  required=False,
                  initial=self.unit.country_objectives,
        )
        self.fields['southcom_objectives'] = forms.CharField(
                  label='SOUTHCOM Objectives:',
                  widget=forms.Textarea(),
                  required=False,
                  initial=self.unit.southcom_objectives,
        )
        self.fields['embassy_objectives'] = forms.CharField(
                  label='Embassy Objectives:',
                  widget=forms.Textarea(),
                  required=False,
                  initial=self.unit.embassy_objectives,
        )
        self.fields['socsouth_objectives'] = forms.CharField(
                  label='SOCSOUTH Objectives:',
                  widget=forms.Textarea(),
                  required=False,
                  initial=self.unit.socsouth_objectives,
        )
        self.fields['mission'] = forms.CharField(
                  label='Mission:',
                  widget=forms.Textarea(),
                  required=False,
                  initial=self.unit.mission,
        )

        self.fields['force'] = forms.CharField(
                  label='Force:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.unit.force
        )
        self.fields['weapons'] = forms.CharField(
                  label='Weapons:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.unit.weapons
        )
        self.fields['comms'] = forms.CharField(
                  label='Comms:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.unit.comms
        )
        self.fields['mobility'] = forms.CharField(
                  label='Mobility:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.unit.mobility
        )
        self.fields['night_vision'] = forms.CharField(
                  label='Night Vision/Optics:',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.unit.night_vision
        )
        self.fields['diagram'] = forms.CharField(
                  label='Full link to Diagram:',
                  help_text='Example:  https://www.w3schools.com/images/w3schools_green.jpg',
                  widget=forms.TextInput(),
                  required=False,
                  initial=self.unit.diagram
        )

    def clean(self):
        cleaned_data = super(UnitUpdateForm, self).clean()
        return cleaned_data

    def save(self, commit=True):
        # no magic at this point i am over the fm
        changes = super(UnitUpdateForm, self).save(commit=False)
        self.unit.unit=changes.unit
        self.unit.country=changes.country
        self.unit.region=changes.region
        self.unit.country_objectives=changes.country_objectives
        self.unit.comms=changes.comms
        self.unit.diagram=changes.diagram
        self.unit.embassy_objectives=changes.embassy_objectives
        self.unit.engagement=changes.engagement
        self.unit.engagement_type=changes.engagement_type
        self.unit.force=changes.force
        self.unit.leader_text=changes.leader_text
        self.unit.location_1=changes.location_1
        self.unit.location_2=changes.location_2
        self.unit.location_3=changes.location_3
        self.unit.mgrs_1=changes.mgrs_1
        self.unit.mgrs_2=changes.mgrs_2
        self.unit.mgrs_3=changes.mgrs_3
        self.unit.mobility=changes.mobility
        self.unit.night_vision=changes.night_vision
        self.unit.engagement=changes.engagement
        self.unit.affiliation=changes.affiliation
        self.unit.mission=changes.mission
        self.unit.socsouth_objectives=changes.socsouth_objectives
        self.unit.southcom_objectives=changes.southcom_objectives
        self.unit.unit_type=changes.unit_type
        self.unit.unit_abbrev=changes.unit_abbrev
        self.unit.weapons=changes.weapons
        self.unit.save()
