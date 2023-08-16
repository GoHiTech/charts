FROM python:3.9-alpine
ARG DOCKER_IMAGE_TAG=1.0.0

RUN pip install websockets

COPY ./ .

CMD ["python", "app.py"]
