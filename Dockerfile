FROM python:3.8-slim-buster

ENV FLASK_APP=app
ENV FLASK_ENV=development

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY app.py .

#CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=80"]
ENTRYPOINT python3 *.py

EXPOSE 80
