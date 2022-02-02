FROM ubuntu
RUN apk update -y && \
    apk -y python-pip python-dev

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements

COPY . /app

ENTRYPOINT ["python"]

CMD ["app.py"]

https://github.com/chang96/aws-ecr.git