FROM python:3

# Install Python and Package Libraries
RUN apt-get update && apt-get upgrade -y && apt-get autoremove && apt-get autoclean
RUN apt-get install -y \
    apt-utils \
    libffi-dev \
    libssl-dev \
    libxml2-dev \
    libxslt-dev \
    libjpeg-dev \
    libfreetype6-dev \
    zlib1g-dev \
    net-tools \
    vim

# Project Files and Settings
# very basic ... nothing fancy AT ALL
# Project Files and Settings
#ARG PROJECT=socat
#ARG PROJECT_DIR=/var/www/${PROJECT}
#RUN mkdir -p $PROJECT_DIR
#WORKDIR $PROJECT_DIR

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./site/ ./
RUN ls -la /*
RUN ./deploy_static.sh 

# Server
STOPSIGNAL SIGINT

ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
