from django.shortcuts import render
from catalog.models import Product, Customer, Subscription, Order, CounterPrefered
from catalog.forms import PreferedBox

# Create your views here.

def home(request):

    return render (request, 'catalog/home.html', locals())

def product(request, name_product=None):

    products = Product.objects.all()

    #To obtain the number of votes
    counter_classic = CounterPrefered.objects.filter(counter_classic=1).count()
    counter_veggie = CounterPrefered.objects.filter(counter_veggie=1).count()
    counter_family = CounterPrefered.objects.filter(counter_family=1).count()

    counters = CounterPrefered.objects.exclude(comment="").order_by('-form_date')[:3]#We send the 3 last votes

    print(counters)
    
    votes = []
    #We ensure we send an empty list if the comment attribute is set to None
    for count in counters:        
        if count.comment:
            votes.append(count)  

    return render(request, 'catalog/product.html', locals())

def cust(request, selected_id=None):

    customers = Customer.objects.order_by('last_name')
    if selected_id:
        selected_id = int(selected_id) #To avoid getting a string in the URL
    return render (request, 'catalog/customer.html', locals())

def sub(request, selected_id=None):

    subscriptions = Subscription.objects.order_by('-created_at')
    if selected_id:
        selected_id = int(selected_id) #To avoid getting a string in the URL

    return render (request, 'catalog/subscription.html', locals())

def order(request):

    orders = Order.objects.order_by('-order_date')
    return render(request, 'catalog/order.html', locals())

def product_detail(request, name_product=None):

    product = Product.objects.get(name=name_product)
    return render(request, 'catalog/product_detail.html', {'product': product}) 

def prefered_box(request):

    if request.method == 'POST':
        form = PreferedBox(request.POST)

        if form.is_valid():
            name = form.cleaned_data['name']
            prefered = form.cleaned_data['prefered']
            comment = form.cleaned_data['comment']
            sent = True #Allow to change the html to display if the form is valid
                        
            counter = CounterPrefered() #Creation of a CounterPrefered to save the result of the vote
            counter.name = name
            counter.comment = comment

            if prefered.name == "classic":
                counter.counter_classic = 1
                counter.product = Product.objects.get(pk=1)

            elif prefered.name == "veggie":
                counter.counter_veggie = 1
                counter.product = Product.objects.get(pk=2)
            
            elif prefered.name == "family":
                counter.counter_family = 1
                counter.product = Product.objects.get(pk=3)

            counter.save()            

    else:
        form = PreferedBox()

    return render(request, 'catalog/prefered.html', locals())



    