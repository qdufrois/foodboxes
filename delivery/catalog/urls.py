
from django.contrib import admin
from django.urls import path, re_path

from . import views


app_name = 'catalog'

urlpatterns = [
    path('', views.home, name='home'),
    re_path(r'^products/(?:(?P<name_product>\D+)/)?$', views.product, name="products"),
    re_path(r'^customers/(?:(?P<selected_id>\d+)/)?$', views.cust, name="customers"),
    re_path(r'^subscriptions/(?:(?P<selected_id>\d+)/)?$', views.sub, name="subscriptions"),
    path('orders', views.order, name="orders"),
    re_path(r'^product_detail/(?P<name_product>\D+)/$', views.product_detail, name="product_detail"),
    path('products/prefered', views.prefered_box, name="prefered_box")
    
]

