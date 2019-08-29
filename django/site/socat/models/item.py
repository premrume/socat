from django.db import models
from django.urls import reverse
from .question import Question

class Item(models.Model):
    id      = models.AutoField(
        primary_key=True
    )

    question       = models.ForeignKey(
        Question,
        on_delete=models.CASCADE,
    )

    created          = models.DateTimeField(
        auto_now_add=True
    )

    updated          = models.DateTimeField(
        auto_now=True
    )

    item_order    = models.CharField(
        default='a',
        help_text='Item character (eg: a, b, c)',
        max_length=1,
    )

    item_weight = models.IntegerField(
        default=0
    )

    item         = models.TextField(
        help_text='Item text',
    )

    # Metadata
    class Meta: 
        unique_together = [
            # no duplicated item_order per question
            ("item_order", "question"),
        ]
        ordering = ['question', 'item_order']

    def __str__(self):
        return f'({self.item_order}) - {self.item}'

    def get_absolute_url(self):
        return reverse('item-detail', args=[str(self.id)])
