from django.views import generic
from django.db.models import Count

from socat.models import Questionnaire

class QuestionnaireList(generic.ListView):
    model = Questionnaire
    template_name = 'socat/questionnaire_list.html'
    def get_queryset(self):
        return Questionnaire.objects.annotate(count_questions=Count('question',distinct = True), count_ass=Count('survey',distinct = True), count_cat=Count('category',distinct = True))

class QuestionnaireDetail(generic.DetailView):
    model = Questionnaire
    template_name = 'socat/questionnaire_detail.html'
    def get_queryset(self):
        return Questionnaire.objects.filter()
