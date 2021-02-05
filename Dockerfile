# pulls official base image
FROM python:3.7-slim-buster

# sets unbuffered python IO
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# installs linux updates
RUN apt-get update
RUN apt-get upgrade -y

# sets working directory & adds app files
WORKDIR /usr/src/project
COPY ./application ./application

# installs dependencies
RUN python -m pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT gunicorn application:application --bind 0.0.0.0:5000
