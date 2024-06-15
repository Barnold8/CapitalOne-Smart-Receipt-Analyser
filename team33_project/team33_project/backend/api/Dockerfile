# syntax=docker/dockerfile:1
FROM python:3.10

EXPOSE 8080

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .
# COPY categorisation/datasets/full_cleaned_data.csv full_cleaned_data.csv
# COPY categorisation/models/cap_one_model1.2.pkl cap_one_model1.2.pkl


ENV GOOGLE_APPLICATION_CREDENTIALS creds.json

ENV FLASK_APP server.py
ENV FLASK_ENV development
ENV FLASK_RUN_PORT 8080
ENV FLASK_RUN_HOST 0.0.0.0

CMD ["flask", "run"]
