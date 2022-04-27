# RecipePortalDatabase created for CSE 412 
This application was developed and tested on ```Ubuntu 20.04.3 LTS``` and ```PostgreSQL 13.5```

# Installation Step
* Install PostgreSQL: ```sudo apt install postgresql``` 
* Install python3
* Install Django: ```pip install Django```
* Install psycopg2: ```pip install psycopg2```

# Setup Step
* Login to your user and set password if you like
  * ```sudo -u <user> psql -c "ALTER USER <user> PASSWORD <password>;"```
* Login to PostgreSQL shell:
  * ```sudo -u <user> psql```
* Create new database in the PostgreSQL shell
  * ```CREATE DATABASE <database_name>;```
* Exit the PostgreSQL shell and load in the SQL dump
  * ``` sudo -u <user> psql <database_name> < /path/to/recipeportaldb.sql```
* Find and access the ```../RecipePortal/settings.py```
  * View ```lines 81 - 90```, some parameters need to be changed to meet local computer parameters
  * Arguments:
    * ENGINE: what SQL backend to use (most likely PostgreSQL)
    * NAME: name of the database being used
    * USER: username used to login to PostgreSQL
    * PASSWORD: password used to login to PostgreSQL
    * HOST: Where database is located, if don't know; by default use local ```127.0.0.1```
    * POST: Post where database is stored
  ```
  DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'recipeportalapp',
        'USER': 'chrispnguyen',  # '$USER'
        'PASSWORD': '',
        'HOST': '127.0.0.1',
        'PORT': '5433',
    }
  }
  ```
  
# Run Step
* To run the necessary migrations, make sure you are in the correct location
  * ```../recipeportal```
* Then run the Django migrations needed to access application
  * ```python manage.py makemigrations```
  * ```python manage.py migrate```
* Lastly, you can run the application website and refer to the User Manual Guide
  * ```python manage.py runserver```
