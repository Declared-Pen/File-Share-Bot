FROM python:3.12-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /File-Share-Bot
WORKDIR /File-Share-Bot
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
