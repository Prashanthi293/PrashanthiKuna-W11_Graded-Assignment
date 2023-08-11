FROM python:3.10.12-slim

ADD requirements.txt /

RUN pip install -r /requirements.txt

ADD app.py /

ADD ms /ms

ADD model /model

EXPOSE 5000

ENV PYTHONUNBUFFERED=1

CMD [ "python", "app.py" ]