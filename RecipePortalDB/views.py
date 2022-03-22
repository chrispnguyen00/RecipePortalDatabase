from django.shortcuts import render

""" 
How to create pages for frontend side
    1) create 'name'.html in templates
    2) create model function here in views.py that link to 'name'.html
    3) create the url pattern for new page in urls.py (the RecipePortalDB urls.py!)
    4) register your model in admin.py to view table on admin side 
"""

# Create your views here.
def homepage(request):
    return render(request, 'homepage.html', context={})

