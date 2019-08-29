from django.db import models
from django.urls import reverse
from .question import Question
from .question import Questionnaire

class Category(models.Model):
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

    questionnaire       = models.ForeignKey(
        Questionnaire,
        on_delete=models.CASCADE,
    )

    question = models.ManyToManyField(
        Question,
    )

    category         = models.CharField(
        max_length = 80,
        help_text='Text for the category',
    )

    observation_help = models.TextField(
    )

    category_order    = models.IntegerField(
        default=1,
        help_text='Display order (eg: 1, 2, 3)',
    )

    # Metadata
    class Meta: 
        ordering = ['questionnaire', 'category_order']
        verbose_name_plural = "categories"

    def __str__(self):
        return f'{self.category}'

    def get_absolute_url(self):
        return reverse('category-detail', args=[str(self.id)])
