from django.views.generic import TemplateView
from pygal.style import BlueStyle

import pygal

from socat.charts import * 

class Chart1View(TemplateView):
    template_name = 'socat/chart_simple.html'

    def get_context_data(self, **kwargs):
        context = super(Chart1View, self).get_context_data(**kwargs)

        # Instantiate our chart. We'll keep the size/style/etc.
        cht_simple = Chart1(
            height=600,
            width=800,
            explicit_size=True,
            style=BlueStyle
        )

        # Call the `.generate()` method on our chart object
        # and pass it to template context.
        context['cht_simple'] = cht_simple.generate()
        return context

class Chart2View(TemplateView):
    template_name = 'socat/chart_simple.html'

    def get_context_data(self, **kwargs):
        context = super(Chart2View, self).get_context_data(**kwargs)

        # Instantiate our chart. We'll keep the size/style/etc.
        cht_simple = Chart2(
            height=600,
            width=800,
            explicit_size=True,
            style=BlueStyle
        )

        # Call the `.generate()` method on our chart object
        # and pass it to template context.
        context['cht_simple'] = cht_simple.generate()
        return context

class Chart3View(TemplateView):
    template_name = 'socat/chart_survey.html'

    def get_context_data(self, **kwargs):
        self.unit_id = kwargs.pop('unit_id')
        context = super(Chart3View, self).get_context_data(**kwargs)
         
        cht_one = Chart3a(
            unit_id=self.unit_id,
            height=600,
            width=900,
            explicit_size=True,
            style=BlueStyle,
        )
        cht_two = Chart3b(
            unit_id=self.unit_id,
            height=600,
            width=900,
            explicit_size=True,
            style=BlueStyle,
        )

        # Call the `.generate()` method on our chart object
        # and pass it to template context.
        context['cht_one'] = cht_one.generate()
        context['cht_two'] = cht_two.generate()
        return context

class Chart4View(TemplateView):
    template_name = 'socat/chart_simple.html'

    def get_context_data(self, **kwargs):
        context = super(Chart4View, self).get_context_data(**kwargs)
         
        # Instantiate our chart. We'll keep the size/style/etc.
        cht_simple = Chart4(
            height=600,
            width=800,
            explicit_size=True,
            style=BlueStyle
        )

        # Call the `.generate()` method on our chart object
        # and pass it to template context.
        context['cht_simple'] = cht_simple.generate()
        return context

class Chart5View(TemplateView):
    template_name = 'socat/chart_survey.html'

    def get_context_data(self, **kwargs):
        self.id = kwargs.pop('survey_id')
        context = super(Chart5View, self).get_context_data(**kwargs)
        survey = Survey.objects.get(id=self.id)
         
        cht_one = Chart5a(
            id=self.id,
            height=400,
            width=800,
            explicit_size=True,
            style=BlueStyle,
            title='Survey Progress -  {}'.format(survey.name)
        )
        cht_two = Chart5b(
            id=self.id,
            height=400,
            width=800,
            explicit_size=True,
            style=BlueStyle,
            title='Response Count  - {}'.format(survey.name)
        )
        cht_three = Chart5c(
            id=self.id,
            height=400,
            width=800,
            explicit_size=True,
            style=BlueStyle,
            title='Response Count/Weight -  {}'.format(survey.name)
        )
        cht_four = Chart5d(
            id=self.id,
            height=400,
            width=800,
            explicit_size=True,
            style=BlueStyle,
            title='Rating - {}'.format(survey.name)
        )
        cht_five = Chart5x(
            id=self.id,
            height=400,
            width=800,
            explicit_size=True,
            style=BlueStyle,
            title='Rating by Category - {}'.format(survey.name)
        )
        # Call the `.generate()` method on our chart object
        # and pass it to template context.
        context['cht_one']   = cht_one.generate()
        context['cht_two']   = cht_two.generate()
        context['cht_three'] = cht_three.generate()
        context['cht_four'] = cht_four.generate()
        context['cht_five'] = cht_five.generate()
        return context
