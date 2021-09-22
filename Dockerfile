# TO DO:
# - create user other than docker
FROM ubuntu:latest as base

WORKDIR /ml_image_det

RUN apt-get update -y && apt-get install -y python3-pip python-dev

EXPOSE 80
EXPOSE 5000

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

ENTRYPOINT ["/bin/bash"]
