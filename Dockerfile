FROM python:3.8-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#COPY requirements.txt /usr/src/app/

RUN pip3 install Flask flask-cors cassandra-driver

COPY . /usr/src/app

ENV FLASK_ENV=development
ENV FLASK_APP=__main__.py
EXPOSE 5000
ENTRYPOINT ["python3"]
#CMD ["-m", ""]
#ENTRYPOINT ["flask run"]
