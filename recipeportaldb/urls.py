from django.urls import path
from . import views
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

urlpatterns = [
    path("", views.homepage, name="homepage"),  # mapping the homepage function
    path("viewdatabase/", views.thedatabase, name="viewdatabase"),
        path("viewdatabase/recipes", views.recipeviewing, name="recipetable"),
        path("viewdatabase/categories", views.categoryviewing, name="categorytable"),
        path("viewdatabase/ingredients", views.ingredientviewing, name="ingredienttable"),
        path("viewdatabase/nutritionlabels", views.nutritionviewing, name="nutritiontable"),
        path("viewdatabase/utensils", views.utensilviewing, name="utensiltable"),
    path("search_database/", views.searchdb, name="search_database"),
    path("add_database/", views.add_data, name="add_database"),
        path("add_database/recipes", views.recipeadd, name="recipeadd"),
        path("add_database/categories", views.categoryadd, name="categoryadd"),
        path("add_database/ingredients", views.ingredientadd, name="ingredientadd"),
        path("add_database/nutritions", views.nutritionadd, name="nutritionadd"),
        path("add_database/utensils", views.utensiladd, name="utensiladd"),
    path("remove_database/", views.remove_data, name="remove_database"),
        path("remove_database/recipes", views.reciperemove, name="reciperemove"),
        path("remove_database/categories", views.categoryremove, name="categoryremove"),
        path("remove_database/ingredients", views.ingredientremove, name="ingredientremove"),
        path("remove_database/nutritions", views.nutritionremove, name="nutritionremove"),
        path("remove_database/utensils", views.utensilremove, name="utensilremove")
]

urlpatterns += staticfiles_urlpatterns()
