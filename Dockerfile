FROM python:3.8-slim-buster

WORKDIR /python-docker

COPY code/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY code/. .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0","--port=8080"]
