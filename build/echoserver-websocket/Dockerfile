FROM python:3.9-alpine
ARG DOCKER_TAG=0.1.1

RUN pip install websockets

COPY ./ .

CMD ["python", "app.py"]
