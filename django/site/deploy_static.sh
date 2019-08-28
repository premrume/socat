python ./manage.py makemigrations
python ./manage.py migrate
python ./manage.py createsuperuser
python ./manage.py makemigrations socat
python ./manage.py migrate socat
python ./manage.py collectstatic
