from django.db import models
import datetime
from django.urls import reverse
from .questionnaire import Questionnaire
from .unit import Unit

class Survey(models.Model):
    DRAFT = 'DRAFT'
    REVIEW = 'REVIEW'
    FINAL = 'FINAL'
    STATE_CHOICES = (
        (DRAFT, 'Draft'),
        (REVIEW, 'Review'),
        (FINAL, 'Final'),
    )

    # Kesy
    id                  = models.AutoField(
        primary_key=True
    )
    questionnaire       = models.ForeignKey(
        Questionnaire,
        on_delete=models.CASCADE,
    )
    unit                = models.ForeignKey(
        Unit,
        on_delete=models.CASCADE,
    )

    # dates
    created             = models.DateTimeField(
        auto_now_add=True
    )
    updated             = models.DateTimeField(
        auto_now=True
    )
    survey_date         = models.DateTimeField(
        default=datetime.datetime.now
    )

    # general
    state               = models.CharField(
        max_length=10, 
        default=DRAFT, 
        choices=STATE_CHOICES,
    )
    name                = models.CharField(
        max_length=80, 
    )
    last_name           = models.CharField(
        max_length=25, 
    )
    first_name          = models.CharField(
        max_length=25, 
    )
    rank                = models.CharField(
        max_length=10, 
    )
    position            = models.CharField(
        max_length=10, 
    )
    reporting           = models.CharField(
        max_length=25, 
    )
    prior_aor           = models.IntegerField(
    )
    prior_engagement    = models.BooleanField(
    )
    # mission
    mission_start       = models.DateTimeField(
        default=datetime.datetime.now
    )
    mission_end         = models.DateTimeField(
        default=datetime.datetime.now
    )
    mission_type        = models.CharField(
        max_length=10, 
    )
    mission_objective   = models.TextField(
    )

    #  Catchall
    end_state           = models.TextField(
        blank=True,
    )
    gaps                = models.TextField(
        blank=True,
    )
    notes   = models.TextField(
        blank=True,
    )

    # Metadata
    class Meta: 
        ordering = ['unit', 'questionnaire', 'created']

    def __str__(self):
        return f'{self.name}'

    def get_absolute_url(self):
        return reverse('survey-update', args=[str(self.id)])
