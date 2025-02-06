FROM python:3.13.1

RUN apt update -y && apt install awscli -y
WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 8080

CMD python3 src/train.py && python3 app.py

#CMD dvc repro && python3 app.py
