FROM python:slim-buster
LABEL maintainer="msoufastai@gmail.com"

VOLUME /src/
COPY influxspeedtest.py requirements.txt config.ini /src/
ADD influxspeedtest /src/influxspeedtest
WORKDIR /src 

RUN pip install -r requirements.txt 

CMD ["python", "-u", "/src/influxspeedtest.py"]
