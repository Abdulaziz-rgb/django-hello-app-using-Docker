# Pull base image
FROM python:3.10.6-buster

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system
# COPY requirements.txt /code/
# RUN pip install -r requirements.txt
# Copy project
COPY . /code/