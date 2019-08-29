from django.db import models
from django.urls import reverse
from .survey import Survey
from .item import Item
from .question import Question

class Response(models.Model):
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

    survey       = models.ForeignKey(
        Survey,
        on_delete=models.CASCADE,
    )

    # Question is not needed, because we have the item,
    # NOT 3rd normal form to keep this easier to "see"
    question       = models.ForeignKey(
        Question,
        on_delete=models.CASCADE,
    )

    item       = models.ForeignKey(
        Item,
        on_delete=models.CASCADE,
        null=True,
    )

    narrative         = models.TextField(
        help_text='Text for the response',
        null=True,
    )

    # Metadata
    class Meta: 
        ordering = ['survey', 'question']

    def __str__(self):
        return f'{self.response}'

    def get_absolute_url(self):
        return reverse('response-update', args=[str(self.id)])
