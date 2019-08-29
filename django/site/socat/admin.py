from django.contrib import admin
from django.db import models
from django import forms

### Nested_admin is slow to display; the expectations is admin will rarely be used
import nested_admin

# The needful
from socat.models import Questionnaire
from socat.models import Question
from socat.models import Item
from socat.models import Category

########### Nested Admin Questionnaire
class ItemInline(nested_admin.NestedTabularInline):
    view_on_site = False
    model = Item
    formfield_overrides = {
       models.CharField: {'widget': forms.Textarea(attrs={'rows':1, 'cols':1})},
       models.TextField: {'widget': forms.Textarea(attrs={'rows':3, 'cols':80})},
    }
    extra = 0
class QuestionInline(nested_admin.NestedTabularInline):
    view_on_site = False
    model = Question
    formfield_overrides = {
       models.TextField: {'widget': forms.Textarea(attrs={'rows':3, 'cols':80})},
    }
    extra = 0
    inlines = [ItemInline]

########### Admin entry points
@admin.register(Questionnaire)
class QuestionnaireAdmin(nested_admin.NestedModelAdmin):
    view_on_site = False
    list_display = ('questionnaire', 'created', 'updated')
    fields = [('questionnaire', 'version'), 'description']
    inlines = [QuestionInline]

@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    view_on_site = False
    list_display = ('questionnaire', 'category_order', 'category', 'observation_help', 'created', 'updated')
    filter_horizontal = ('question',)
    fields = ['category_order', 'questionnaire', 'category', 'question', 'observation_help']
