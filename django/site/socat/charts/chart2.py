import pygal

from django.db.models import Count

from socat.models import Questionnaire

class Chart2():

    def __init__(self, **kwargs):
        self.chart = pygal.Bar(**kwargs)
        self.chart.title = 'Count Questions by Questionnaire Level'

    def get_data(self):
        data = {}
        for questionnaire in Questionnaire.objects.annotate(count_q=Count('question')):
             data[questionnaire.questionnaire] = questionnaire.count_q
        return data

    def generate(self):
        # Get chart data
        chart_data = self.get_data()

        # Add data to chart
        for key, value in chart_data.items():
            self.chart.add(key, value)

        # Return the rendered SVG
        return self.chart.render(is_unicode=True)

