# python 2.7.10
FROM       python:2.7.10

# WORK DIR
WORKDIR    /var/app

RUN        apt-get update
RUN        apt-get install wget -y
RUN        apt-get install rpm -y
RUN        apt-get install psmisc
RUN        apt-get install vim -y
RUN        apt-get install supervisor -y
RUN        apt-get install nginx -y


RUN        pip install --upgrade pip
RUN        pip install virtualenv
RUN        virtualenv /var/app
RUN        /var/app/bin/pip install --upgrade pip
RUN        /var/app/bin/pip install uwsgi

RUN        useradd uwsgi -s /bin/false
RUN        mkdir /var/log/uwsgi
RUN        chown -R uwsgi:uwsgi /var/log/uwsgi


ADD . /var/app
RUN if [ -f /var/app/requirements.txt ]; then /var/app/bin/pip install -r /var/app/requirements.txt; fi

ENV        UWSGI_NUM_PROCESSES    1
ENV        UWSGI_NUM_THREADS      15
ENV        UWSGI_UID              uwsgi
ENV        UWSGI_GID              uwsgi
ENV        UWSGI_LOG_FILE         /var/log/uwsgi/uwsgi.log

EXPOSE     8080

ADD        uwsgi-start.sh /

CMD        []
ENTRYPOINT ["sh", "/uwsgi-start.sh"]
