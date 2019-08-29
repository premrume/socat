from django.shortcuts import render
from socat.models import Questionnaire
from socat.models import Survey
from socat.models import Category
from socat.models import Unit

def index_view(request, *args, **kwargs):
    template_name = 'index.html'
    num_questionnaires     = Questionnaire.objects.all().count()

    num_surveys         = Survey.objects.all().count()
    num_surveys_draft   = Survey.objects.filter(state='DRAFT').count()
    num_surveys_review  = Survey.objects.filter(state='REVIEW').count()
    num_surveys_final   = Survey.objects.filter(state='FINAL').count()

    num_categories      = Category.objects.all().count()

    num_units           = Unit.objects.all().count()
   
    context = {
        'num_questionnaires'     : num_questionnaires,
        'num_surveys'        : num_surveys,
        'num_surveys_review' : num_surveys_review,
        'num_surveys_draft'  : num_surveys_draft,
        'num_surveys_final'  : num_surveys_final,
        'num_categories'     : num_categories,
        'num_units'          : num_units,
    }

    return render(request, template_name, context=context)

