# Work in progress

# Basic Python Virtual Environment FOR LINUX

```
$ python3 --version
Python 3.6.8

$ virtualenv venv

$ . ./venv/bin/activate

(venv) $ pip --version
pip 9.0.3 from ....  (python 3.6)

(venv) $ pip install -r requirements.txt
....
```

# Basic Database Setup

Assumptions:, 
- pgAdmin is available and connected to the Server 
- doing the bare minimal level of effort, a DBA should manage the DB 

1. pgAdmin - create a database owned by postgres 
```
*YOU SHOULD HAVE DATABASE postgres
NAME    postgres
OWNER   use dropdown to select postgres
```

2.  Settings - update the DATABASE name, user, password, host, port in the .site/socsouth/settings.py For example:
YES THIS NEEDS TO BE RE_ENGINEERED
```
vi .site/socsouth/settings.py
DATABASES = {
'default': {
'ENGINE': 'django.db.backends.postgresql',
'NAME': 'postgres',
'USER': 'postgres',
'PASSWORD': 'postgres',
'HOST': 'postgres',
'PORT': '5432'
}
}
```

3. Migrations are NOT up to date.  This project stopped work midstream.
```
(venv) $ cd site
(venv) $ python manage.py makemigrations
No changes detected
(venv) $ python manage.py migrate
Operations to perform:
  Apply all migrations: admin, auth, contenttypes, sessions
Running migrations:
  Applying contenttypes.0001_initial... OK
  Applying auth.0001_initial... OK
  Applying admin.0001_initial... OK
  Applying admin.0002_logentry_remove_auto_add... OK
  Applying admin.0003_logentry_add_action_flag_choices... OK
  Applying contenttypes.0002_remove_content_type_name... OK
  Applying auth.0002_alter_permission_name_max_length... OK
  Applying auth.0003_alter_user_email_max_length... OK
  Applying auth.0004_alter_user_username_opts... OK
  Applying auth.0005_alter_user_last_login_null... OK
  Applying auth.0006_require_contenttypes_0002... OK
  Applying auth.0007_alter_validators_add_error_messages... OK
  Applying auth.0008_alter_user_username_max_length... OK
  Applying auth.0009_alter_user_last_name_max_length... OK
  Applying sessions.0001_initial... OK
(venv) $ python manage.py createsuperuser
Username (leave blank to use 'me'): admin
Email address: admin@nowhere.com
Password: 
Password (again): 
The password is too similar to the email address.
This password is too short. It must contain at least 8 characters.
This password is too common.
Bypass password validation and create user anyway? [y/N]: y
Superuser created successfully.
```

4. And next steps
```
(venv) $ python manage.py makemigrations socat
Migrations for 'socat':
  socat/migrations/0001_initial.py
    - Create model Capability
    - Create model Category
    - Create model Item
    - Create model Question
    - Create model Questionnaire
    - Create model Response
    - Create model Survey
    - Create model Unit
    - Add field unit to survey
    - Add field survey to response
    - Add field questionnaire to question
    - Add field question to item
    - Add field question to category
    - Add field questionnaire to category
    - Add field category to capability
    - Add field survey to capability
    - Alter unique_together for question (1 constraint(s))
    - Alter unique_together for item (1 constraint(s))
(venv) $ python manage.py migrate socat
Operations to perform:
  Apply all migrations: socat
Running migrations:
  Applying socat.0001_initial... OK
```

#  Back to python
1.   Rinse and repeat until successful
```
(venv) $ cd site
(venv) $ python manage.py runserver 0.0.0.0:8000
Performing system checks...

System check identified no issues (0 silenced).
April 11, 2019 - 16:58:49
Django version 2.1.7, using settings 'socsouth.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CONTROL-C.
```

# User the browser to try the admin
```
From the browswer go to http://localhost:8000/admin
Login with the createsuperuser id from above (admin/admin)
```


# BY THE WAY
If you get this error it is because you are not in a command window that ran the activate.
```
python manage.py runserver
Traceback (most recent call last):
  File "manage.py", line 8, in <module>
    from django.core.management import execute_from_command_line
ModuleNotFoundError: No module named 'django'

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "manage.py", line 14, in <module>
    ) from exc
ImportError: Couldn't import Django. Are you sure it's installed and available on your PYTHONPATH environment variable? Did you forget to activate a virtual environment?

```
# DEV NOTES...
```
  pip install -r requirements.txt
  cd site
  python manage.py makemigrations
  python manage.py migrate
  #python manage.py createsuperuser
  echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', 'socat')" | python manage.py shell
  python manage.py makemigrations socat
  python manage.py migrate socat
  python manage.py runserver 0.0.0.0:8000
```
