from django.urls import path
from . import views
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

urlpatterns = [
    path("", views.homepage, name="homepage"),  # mapping the homepage function
    path("recipedatabase/", views.thedatabase, name="recipedatabase"),
    path("aboutus/", views.about, name="aboutus")
]

urlpatterns += staticfiles_urlpatterns()
