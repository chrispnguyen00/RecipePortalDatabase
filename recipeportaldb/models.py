from django.db import models

"""
Notes:
    * ... modelsForeignKey(..., null=True) => null=True is needed to allow values to be NULL; 
            by default, values can't be NULL
    
Resources:
    * https://bit.ly/36Ke1OA
    
    
Parameters
    null=True <- allows empty values to be NULL; default is False
    blank=True <- allows field to be blank; default is False
    primary_key=True <- if don't specify, django will choose one; pKey implies null=False & unique=True
        unique=True <- unique value throughout the table or else an error will be raised  

Model Types
    BooleanField, CharField, DecimalField(cares bout # of decimal places), FloatField, IntegerField, TextField
    
* For attributes that has ‘NOT NULL’, we should do default=00000 or something because of django and postgresql issues
https://stackoverflow.com/questions/25964312/not-null-constraint-failed-after-adding-to-models-py
https://stackoverflow.com/questions/28670307/django-migration-not-null-constraint-failed

"""

# Create your models here.

# CREATE TABLE Category #
class Category(models.Model):
    categoryid = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=255, default='00000')


# CREATE TABLE Recipe #
class Recipe(models.Model):
    recipeid = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=255, default='00000')
    steps = models.TextField(max_length=255, default='00000')
    description = models.TextField(max_length=255, default='00000')


# CREATE TABLE CategoryRecipe # (Relationship)
class CategoryRecipe(models.Model):
    categoryid = models.ForeignKey("Category", to_field="categoryid", on_delete=models.DO_NOTHING)
    recipeid = models.ForeignKey("Recipe", to_field="recipeid", on_delete=models.SET_NULL, null=True)

    class Meta:
        unique_together = ("categoryid", "recipeid")


# CREATE TABLE Utensil #
class Utensil(models.Model):
    utensilid = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=255, default='00000')


# CREATE TABLE UtensilRecipe # (Relationship)
class UtensilRecipe(models.Model):
    utensilid = models.ForeignKey("Utensil", to_field="utensilid", on_delete=models.SET_NULL, null=True)
    recipeid = models.ForeignKey("Recipe", to_field="recipeid", on_delete=models.SET_NULL, null=True)

    class Meta:
        unique_together = ("utensilid", "recipeid")


# CREATE TABLE Ingredient #
class Ingredient(models.Model):
    ingredientid = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=255)
    type = models.CharField(max_length=255)


# CREATE TABLE IngredientRecipe # (Relationship)
class IngredientRecipe(models.Model):
    ingredientid = models.ForeignKey("Ingredient", to_field="ingredientid", on_delete=models.SET_NULL, null=True)
    recipeid = models.ForeignKey("Recipe", to_field="recipeid", on_delete=models.SET_NULL, null=True)
    amount = models.CharField(max_length=255)

    class Meta:
        unique_together = ("ingredientid", "recipeid")


# CREATE TABLE IngredientNutrition # (Nutrition_Table + Relationship b/t Ingredient & Nutrition)
class IngredientNutrition(models.Model):
    nutritionid = models.IntegerField(primary_key=True)
    ingredientid = models.ForeignKey("Ingredient", to_field="ingredientid", on_delete=models.CASCADE)
    portionsize = models.FloatField(max_length=24)
    calories = models.IntegerField()
    fat = models.IntegerField()
    protein = models.IntegerField()
    sodium = models.IntegerField()
    carbs = models.IntegerField()

    class Meta:
        unique_together = ("nutritionid", "ingredientid")

