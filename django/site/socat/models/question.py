from django.db import models
from django.urls import reverse
from .questionnaire import Questionnaire

class Question(models.Model):

    # Fields
    id      = models.AutoField(
        primary_key=True
    )

    questionnaire       = models.ForeignKey(
        Questionnaire,
        on_delete=models.CASCADE,
    )

    created          = models.DateTimeField(
        auto_now_add=True
    )

    updated          = models.DateTimeField(
        auto_now=True
    )

    question_order    = models.IntegerField(
        default=1,
        help_text='Question integer (eg: 1, 2, 3)',
    )

    question_display    = models.CharField(
        max_length=15,
        help_text='Question integer (eg: 1, 2, 3)',
    )

    question         = models.TextField(
        help_text='Question text - max is 120',
    )

    # Metadata
    class Meta: 
        ordering = ['questionnaire', 'question_order']
        unique_together = [
            # no duplicated position per questionnaire
            ("questionnaire", "question_order"),
        ]

    def __str__(self):
        return f'{self.question_display}.  {self.question}'

    def get_absolute_url(self):
        return reverse('question-detail', args=[str(self.id)])
