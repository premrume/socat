from django.db import models
from django.urls import reverse

class Questionnaire(models.Model):
    # Fields
    id      = models.AutoField(
        primary_key=True
    )

    created          = models.DateTimeField(
        auto_now_add=True
    )

    updated          = models.DateTimeField(
        auto_now=True
    )

    version    = models.CharField(
        default='V1.0',
        help_text='Identifying Version - max lenght of 6',
        null=True,
        max_length=6,
    )

    questionnaire   = models.CharField(
        max_length=25,
        help_text='Unique Questionnaire name - max length of 25',
        unique=True
    )

    description         = models.TextField(
        help_text='Questionnaire description text',
        null=True,
    )

    # Metadata
    class Meta:
        ordering = ['updated']

    def __str__(self):
        return f'{self.questionnaire}'

    def get_absolute_url(self):
        return reverse('questionnaire-detail', args=[str(self.id)])
