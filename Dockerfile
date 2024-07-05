FROM apache/airflow:2.9.1-python3.11

LABEL maintainer="Nghi Le Thanh (Data)"

USER airflow
COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt

# Exposing ports
EXPOSE 8080 5555 8888
