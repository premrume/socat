from django.views import generic
from django.views import View
from django.shortcuts import get_object_or_404, render, redirect, reverse
from django.db.models import Count

from socat.models import Unit
from socat.forms import UnitCreateForm
from socat.forms import UnitUpdateForm

class UnitList(generic.ListView):
    model = Unit
    template_name = 'socat/unit_list.html'
    def get_queryset(self):
        return Unit.objects.filter().annotate(count_=Count('survey'))

class UnitCreate(View):
    model = Unit
    template_name = 'socat/unit_create.html'
    form_class = UnitCreateForm

    def get(self, request, *args, **kwargs):
         form = self.form_class()
         context = {
           'form' : form
         }
         return render(request, self.template_name, context)

    def post(self, request, *args, **kwargs):
         form = self.form_class(request.POST)
         context = {
           'form' : form
         }
         if form.is_valid():
             unit_id = form.save()
             return redirect(reverse('unit-list'))

         return render(request, self.template_name, context)

class UnitUpdate(View):
    model = Unit 
    template_name = 'socat/unit_update.html'
    form_class = UnitUpdateForm

    def get_object(self):
       id = self.kwargs.get('unit_id')
       unit = None
       if id is not None:
         unit = get_object_or_404(Unit, id=id)
       return unit

    def get(self, request, unit_id=None, *args, **kwargs):
         context = {}
         unit = self.get_object()
         if unit is not None:
           form = self.form_class(unit=unit)
           context = {
             'unit' : unit,
             'form' : form,
           }
         return render(request, self.template_name, context)

    def post(self, request, unit_id=None, *args, **kwargs):
         context = {}
         unit = self.get_object()
         if unit is not None:
           form = self.form_class(request.POST, unit=unit)
           if form.is_valid():
             unit_id = form.save()
             return redirect(reverse('unit-list'))
         return render(request, self.template_name, context)
