FROM django

# crawl:  no bells, no whistles
# TODO:  that port should be a variable - 12 factors baby.

ADD . /ui

WORKDIR /ui

RUN pip install -r requirements.txt

CMD [ "python", "./manage.py runserver 0.0.0.0:8000" ]
