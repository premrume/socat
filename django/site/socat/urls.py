from django.urls import path
from .views import index_view
from .views import QuestionnaireList, QuestionnaireDetail
from .views import SurveyList, SurveyCreate, SurveyUpdate
from .views import ResponseView
from .views import CapabilityView
from .views import Chart1View, Chart2View, Chart3View, Chart4View, Chart5View
from .views import CategoryList, CategoryDetail
from .views import UnitList, UnitCreate, UnitUpdate
from .views import AssessmentSummaryView, AssessmentCapabilityView

urlpatterns = [

    path('', index_view, name='index'),

    path('categories/'                      , CategoryList.as_view()           , name='category-list'),
    path('category/<int:pk>'                , CategoryDetail.as_view()         , name='category-detail'),

    path('questionnaires/'                  , QuestionnaireList.as_view()      , name='questionnaire-list'),
    path('questionnaire/<int:pk>'           , QuestionnaireDetail.as_view()    , name='questionnaire-detail'),

    path('surveys/'                         , SurveyList.as_view()             , name='survey-list'),
    path('survey/<int:survey_id>'           , SurveyUpdate.as_view()           , name='survey-update'),
    path('survey/create/'                   , SurveyCreate.as_view()           , name='survey-create'),

    path('response/<int:survey_id>'         , ResponseView.as_view()           , name='response'),
    path('response'                         , ResponseView.as_view()           , name='response'),

    path('capability/<int:survey_id>'       , CapabilityView.as_view()         , name='capability'),
    path('capability'                       , CapabilityView.as_view()         , name='capability'),

    path('assessment/summary/<int:survey_id>'      , AssessmentSummaryView.as_view()    , name='assessment-summary'),
    path('assessment/capability/<int:survey_id>'   , AssessmentCapabilityView.as_view() , name='assessment-capability'),

    path('chart1/'                          , Chart1View.as_view()             , name='chart-1'),
    path('chart2/'                          , Chart2View.as_view()             , name='chart-2'),
    path('chart3/<int:unit_id>'             , Chart3View.as_view()             , name='chart-3'),
    path('chart4/'                          , Chart4View.as_view()             , name='chart-4'),
    path('chart5/<int:survey_id>'           , Chart5View.as_view()             , name='chart-5'),

    path('units/'                           , UnitList.as_view()               , name='unit-list'),
    path('unit/create/'                     , UnitCreate.as_view()             , name='unit-create'),
    path('unit/update/<int:unit_id>'        , UnitUpdate.as_view()             , name='unit-update'),

]
