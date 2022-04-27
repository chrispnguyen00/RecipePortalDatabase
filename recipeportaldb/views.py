from django.shortcuts import render
from recipeportaldb.models import Recipe, Category, Ingredient, IngredientNutrition, Utensil
from itertools import chain
from django.db.models import Q
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

def recipeviewing(request):
    recipes = Recipe.objects.order_by('recipeid')
    context = {"recipes": recipes}
    return render(request, 'recipetable.html', context)

def categoryviewing(request):
    categories = Category.objects.order_by('categoryid')
    context = {"categories": categories}
    return render(request, 'categorytable.html', context)

def ingredientviewing(request):
    ingredients = Ingredient.objects.order_by('ingredientid')
    context = {"ingredients": ingredients}
    return render(request, 'ingredienttable.html', context)

def nutritionviewing(request):
    nutritions = IngredientNutrition.objects.order_by('nutritionid')
    context = {"nutritions": nutritions}
    return render(request, 'nutritiontable.html', context)

def utensilviewing(request):
    utensils = Utensil.objects.order_by('utensilid')
    context = {"utensils": utensils}
    return render(request, 'utensiltable.html', context)

def searchdb(request):
    if request.method == "GET":
        query_name = request.GET.get('user_input', '')
        if query_name:
            category = (Q(name__icontains=query_name))
            recipe = (Q(name__icontains=query_name))
            ingredient = (Q(name__icontains=query_name))
            utensil = (Q(name__icontains=query_name))

            cate = Category.objects.filter(category).values_list()
            reci = Recipe.objects.filter(recipe).values_list()
            ingr = Ingredient.objects.filter(ingredient).values_list()
            uten = Utensil.objects.filter(utensil).values_list()

            results = chain(cate, reci, ingr, uten)
            return render(request, 'searchtable.html', context={"results": results})

    return render(request, 'searchtable.html')

def add_data(request):
    return render(request, 'add_database.html', context={})

def recipeadd(request):
    added = False
    if request.method == "POST":
        if request.POST.get('recipename') and request.POST.get('recipedescription') and request.POST.get('recipesteps'):
            lastrecipe = Recipe.objects.order_by('recipeid').last()
            recipe = Recipe()
            recipe.recipeid = lastrecipe.recipeid + 1
            recipe.name = request.POST.get('recipename')
            recipe.description = request.POST.get('recipedescription')
            recipe.steps = request.POST.get('recipesteps')
            recipe.save()
            added = True
            context = {"added": added}
            return render(request, 'recipeadd.html', context)
        else:
            context = {"added": added}
            return render(request, 'recipeadd.html', context)
    else:
        return render(request, 'recipeadd.html')

def categoryadd(request):
    added = False
    if request.method == "POST":
        if request.POST.get('categoryname'):
            lastcategory = Category.objects.order_by('categoryid').last()
            category = Category()
            category.categoryid = lastcategory.categoryid + 1
            category.name = request.POST.get('categoryname')
            category.save()
            added = True
            context = {"added": added}
            return render(request, 'categoryadd.html', context)
        else:
            context = {"added": added}
            return render(request, 'categoryadd.html', context)
    else:
        return render(request, 'categoryadd.html')

def ingredientadd(request):
    added = False
    if request.method == "POST":
        if request.POST.get('ingredientname') and request.POST.get('foodtype'):
            lastingredient = Ingredient.objects.order_by('ingredientid').last()
            ingredient = Ingredient()
            ingredient.ingredientid = lastingredient.ingredientid + 1
            ingredient.name = request.POST.get('ingredientname')
            ingredient.type = request.POST.get('foodtype')
            ingredient.save()
            added = True
            context = {"added": added}
            return render(request, 'ingredientadd.html', context)
        else:
            context = {"added": added}
            return render(request, 'ingredientadd.html', context)
    else:
        return render(request, 'ingredientadd.html')

def nutritionadd(request):
    added = False
    ingredientids = [obj.ingredientid for obj in Ingredient.objects.order_by('ingredientid')]
    if request.method == "POST":
        if request.POST.get('portionsize') and request.POST.get('calories') and request.POST.get('fat') and request.POST.get('protein') and request.POST.get('sodium') and request.POST.get('carbs'):
            lastnutrition = IngredientNutrition.objects.order_by('nutritionid').last()
            nutrition = IngredientNutrition()
            nutrition.nutritionid = lastnutrition.nutritionid + 1
            test = Ingredient.objects.get(ingredientid=request.POST.get('id'))
            nutrition.ingredientid = test
            nutrition.portionsize = request.POST.get('portionsize')
            nutrition.calories = request.POST.get('calories')
            nutrition.fat = request.POST.get('fat')
            nutrition.protein = request.POST.get('protein')
            nutrition.sodium = request.POST.get('sodium')
            nutrition.carbs = request.POST.get('carbs')
            nutrition.save()
            added = True
            context = {
                "added": added,
                "ingredientids": ingredientids}

            return render(request, 'nutritionadd.html', context)
        else:
            context = {
                "added": added,
                "ingredientids": ingredientids}
            return render(request, 'nutritionadd.html', context)
    else:
        return render(request, 'nutritionadd.html', context={"ingredientids": ingredientids})

def utensiladd(request):
    added = False
    if request.method == "POST":
        if request.POST.get('utensilname'):
            lastutensil = Utensil.objects.order_by('utensilid').last()
            utensil = Utensil()
            utensil.utensilid = lastutensil.utensilid + 1
            utensil.name = request.POST.get('utensilname')
            utensil.save()
            added = True
            context = {"added": added}
            return render(request, 'utensiladd.html', context)
        else:
            context = {"added": added}
            return render(request, 'utensiladd.html', context)
    else:
        return render(request, 'utensiladd.html')

def remove_data(request):
    return render(request, 'remove_database.html', context={})

def reciperemove(request):
    removed = False
    if request.method == "POST":
        if request.POST.get('recipeid'):
            if Recipe.objects.filter(recipeid=request.POST.get('recipeid')).exists():
                recipe = Recipe.objects.get(recipeid=request.POST.get('recipeid'))
                recipe.delete()
                removed = True
                context = {"removed": removed}
                return render(request, 'reciperemove.html', context)
            else:
                context = {"removed": removed}
                return render(request, 'reciperemove.html', context)
        else:
            context = {"removed": removed}
            return render(request, 'reciperemove.html', context)
    else:
        return render(request, 'reciperemove.html')

def categoryremove(request):
    removed = False
    if request.method == "POST":
        if request.POST.get('categoryid'):
            if Category.objects.filter(categoryid=request.POST.get('categoryid')).exists():
                category = Category.objects.get(categoryid=request.POST.get('categoryid'))
                category.delete()
                removed = True
                context = {"removed": removed}
                return render(request, 'categoryremove.html', context)
            else:
                context = {"removed": removed}
                return render(request, 'categoryremove.html', context)
        else:
            context = {"removed": removed}
            return render(request, 'categoryremove.html', context)
    else:
        return render(request, 'categoryremove.html')

def ingredientremove(request):
    removed = False
    if request.method == "POST":
        if request.POST.get('ingredientid'):
            if Ingredient.objects.filter(ingredientid=request.POST.get('ingredientid')).exists():
                ingredient = Ingredient.objects.get(ingredientid=request.POST.get('ingredientid'))
                ingredient.delete()
                removed = True
                context = {"removed": removed}
                return render(request, 'ingredientremove.html', context)
            else:
                context = {"removed": removed}
                return render(request, 'ingredientremove.html', context)
        else:
            context = {"removed": removed}
            return render(request, 'ingredientremove.html', context)
    else:
        return render(request, 'ingredientremove.html')

def nutritionremove(request):
    removed = False
    if request.method == "POST":
        if request.POST.get('nutritionid'):
            if IngredientNutrition.objects.filter(nutritionid=request.POST.get('nutritionid')).exists():
                nutrition = IngredientNutrition.objects.get(nutritionid=request.POST.get('nutritionid'))
                nutrition.delete()
                removed = True
                context = {"removed": removed}
                return render(request, 'nutritionremove.html', context)
            else:
                context = {"removed": removed}
                return render(request, 'nutritionremove.html', context)
        else:
            context = {"removed": removed}
            return render(request, 'nutritionremove.html', context)
    else:
        return render(request, 'nutritionremove.html')

def utensilremove(request):
    removed = False
    if request.method == "POST":
        if request.POST.get('utensilid'):
            if Utensil.objects.filter(utensilid=request.POST.get('utensilid')).exists():
                utensil = Utensil.objects.get(utensilid=request.POST.get('utensilid'))
                utensil.delete()
                removed = True
                context = {"removed": removed}
                return render(request, 'utensilremove.html', context)
            else:
                context = {"removed": removed}
                return render(request, 'utensilremove.html', context)
        else:
            context = {"removed": removed}
            return render(request, 'utensilremove.html', context)
    else:
        return render(request, 'utensilremove.html')

