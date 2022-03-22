from django.contrib import admin

# Register your models here.
import RecipePortalDB.models

admin.site.register(RecipePortalDB.models.Recipe)
admin.site.register(RecipePortalDB.models.Category)
