from django.views import generic
from django.db.models import Count

from socat.models import Category

class CategoryList(generic.ListView):
    model = Category
    template_name = 'socat/category_list.html'
    def get_queryset(self):
        return Category.objects.annotate(count_questions=Count('question'))

class CategoryDetail(generic.DetailView):
    model = Category
    template_name = 'socat/category_detail.html'
    def get_queryset(self):
        return Category.objects.filter().annotate(count_questions=Count('question'))

