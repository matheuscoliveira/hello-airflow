FROM python:3.7

ENV AIRFLOW_HOME=~/airflow

COPY ./requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt

COPY ./dags ${AIRFLOW_HOME}/dags
