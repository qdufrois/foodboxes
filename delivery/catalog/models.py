from django.db import models


class Product(models.Model):

    product_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255, null=False, blank=False)
    nb_of_meals = models.IntegerField(null=False, blank=False)
    nb_of_persons = models.IntegerField(null=False, blank=False)
    description = models.TextField()

    class Meta:
        db_table = 'product'
    
    def __str__(self):
        return self.name


class Customer(models.Model):

    customer_id = models.AutoField(primary_key=True)
    first_name = models.CharField(max_length=255, null=False, blank=False)
    last_name = models.CharField(max_length=255, null=False, blank=False)
    email = models.CharField(max_length=255, null=False, blank=False)
    password = models.CharField(max_length=255, null=False, blank=False)

    class Meta:
        db_table = 'customer'
    
    def __str__(self):
        return self.last_name + " " +self.first_name    


class Subscription(models.Model):

    subscription_id = models.AutoField(primary_key=True)
    status = models.CharField(max_length=85, null=False, blank=False)
    created_at = models.DateTimeField(null=False, blank=True, auto_now_add=True)

    product = models.ForeignKey(Product, models.SET_NULL, null=True, blank=False)
    customer = models.ForeignKey(Customer, models.SET_NULL, null=True, blank=False)

    class Meta:
        db_table = 'subscription'

    def __str__(self):
        return str(self.subscription_id)

    
class Order(models.Model):

    order_id = models.AutoField(primary_key=True)
    price = models.DecimalField(max_digits=5, decimal_places=2, null=False, blank=False) #ici max = 99,999
    order_date = models.DateTimeField(null=False, blank=True, auto_now_add=True)

    subscription = models.ForeignKey(Subscription, models.SET_NULL, null=True, blank=False)

    class Meta:
        db_table = 'orders'        

    def __str__(self):
        return str(self.order_date)
        

class CounterPrefered(models.Model):

    name = models.CharField(max_length=40, null=False)
    form_date = models.DateTimeField(null=False, blank=True, auto_now_add=True)
    comment = models.TextField()
    counter_classic = models.IntegerField(null=True)
    counter_veggie = models.IntegerField(null=True)
    counter_family = models.IntegerField(null=True)

    product = models.ForeignKey(Product, on_delete=models.CASCADE, null=False)

    class Meta:
        db_table = 'counter_prefered'

    def __str__(self):
        return "Vote of " + self.name