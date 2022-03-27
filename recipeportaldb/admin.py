from django.contrib import admin

# Register your models here.
import recipeportaldb.models

admin.site.register(recipeportaldb.models.Category)
admin.site.register(recipeportaldb.models.Utensil)
admin.site.register(recipeportaldb.models.CategoryRecipe)
admin.site.register(recipeportaldb.models.UtensilRecipe)
admin.site.register(recipeportaldb.models.Ingredient)
admin.site.register(recipeportaldb.models.IngredientRecipe)
admin.site.register(recipeportaldb.models.IngredientNutrition)
admin.site.register(recipeportaldb.models.Recipe)
