FROM ubuntu:latest
MAINTAINER "Cassiano Monego" "cassianomonego@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["data/app.py"]
