from django.urls import path
from .import views

urlpatterns = [
     
    path('dom',views.dom,name='dom'),
    path('java',views.java,name='java'),
    path('calculator',views.calculator,name='calculator'),
    path('new',views.new,name='new'),
    path('validation',views.validation,name='validation'),
    path('jquery',views.jquery,name='jquery'),
    path('array_string',views.array_string,name='array_string'),
    path('slider',views.slider,name='slider'),
    path('dom_two',views.dom_two,name='dom_two'),
    path('dom_new',views.dom_new,name='dom_new'),
    path('calculatorBasic',views.calculatorBasic,name='calculatorBasic'),
    path('array',views.array,name='array'),
    path('jquerynew',views.jquerynew,name='jquerynew'),
    path('database',views.database,name='database'),
    path('kseb',views.kseb,name='kseb'),
    
    

    


]
