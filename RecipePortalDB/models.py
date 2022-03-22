from django.db import models

# Create your models here.
class Recipe(models.Model):
    recipeID = models.IntegerField()
    name = models.CharField(max_length=27)
    description = models.TextField()
    steps = models.TextField()