from django.shortcuts import render

""" 
How to create pages for frontend side
    1) create 'name'.html in templates
    2) create model function here in views.py that link to 'name'.html
    3) create the url pattern for new page in urls.py (the recipeportaldb urls.py!)
    4) register your model in admin.py to view table on admin side 
"""

# Create your views here.
def homepage(request):
    return render(request, 'homepage.html', context={})

def thedatabase(request):
    return render(request, 'thedatabase.html', context={})

def about(request):
    return render(request, 'about.html', context={})