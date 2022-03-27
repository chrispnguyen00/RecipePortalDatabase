from django.test import TestCase

import recipeportaldb.models
from recipeportaldb.models import Ingredient

# Create your tests here.
Ingredient.objects.get(ingredientid=20).delete()


