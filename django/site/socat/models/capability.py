from django.db import models
from django.urls import reverse
from .category import Category
from .survey import Survey

class Capability(models.Model):
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

    survey    = models.ForeignKey(
        Survey,
        on_delete=models.CASCADE
    )

    category    = models.ForeignKey(
        Category,
        on_delete=models.CASCADE
    )

    observation        = models.TextField(
        null=True,
    )

    # Metadata
    class Meta: 
        ordering = ['updated']

    def __str__(self):
        return f'{self.id}'

    def get_absolute_url(self):
        return reverse('capability-create', args=[str(self.id)])
