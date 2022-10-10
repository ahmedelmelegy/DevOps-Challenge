FROM python:3.7-alpine
COPY . /usr/app
WORKDIR /usr/app
RUN pip install -r requirements.txt
CMD export $(cat .env | xargs) && python hello.py
EXPOSE 8000