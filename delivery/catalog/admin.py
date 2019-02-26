from django.contrib import admin
from catalog.models import Product, Customer, Subscription, Order, CounterPrefered


# Register your models here.

class CustomerAdmin(admin.ModelAdmin):

    list_display = ('last_name', 'first_name', 'email', 'password')
    ordering = ('last_name', 'first_name')

admin.site.register(Product)
admin.site.register(Customer, CustomerAdmin)
admin.site.register(Subscription)
admin.site.register(Order)
admin.site.register(CounterPrefered)