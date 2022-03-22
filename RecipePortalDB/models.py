from django.db import models

"""Notes:
Parameters
    null=True <- allows empty values to be NULL; default is False
    blank=True <- allows field to be blank; default is False
    primary_key=True <- if don't specify, django will choose one; pKey implies null=False & unique=True
        unique=True <- unique value throughout the table or else an error will be raised  

Model Types
    BooleanField, CharField, DecimalField(cares bout # of decimal places), FloatField, IntegerField, TextField
"""

# Create your models here.
class Recipe(models.Model):
    recipeID = models.IntegerField()
    name = models.CharField(max_length=27)
    description = models.TextField()
    steps = models.TextField()

class Category(models.Model):
    categoryID = models.IntegerField()
    name = models.CharField(max_length=10)