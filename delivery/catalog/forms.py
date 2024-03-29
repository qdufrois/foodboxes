from django import forms
from .models import Product


class PreferedBox(forms.Form):
    """Form class used to collect the name, the prefered box and an eventual comment from a user"""
    name = forms.CharField(max_length=40, label="Enter your name")
    prefered = forms.ModelChoiceField(queryset=Product.objects.all())
    comment = forms.CharField(label="Fill this if you have any comment",required=False)