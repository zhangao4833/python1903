from duruo850/ubuntu18.04-python3.6:latest
MAINTAINER imzhangao imzhangao@163.com
WORKDIR /usr/src
RUN apt update
RUN apt install cron -y
RUN git clone https://github.com/zhangao4833/python1903.git
WORKDIR /usr/src/django_test
RUN pip3 install -r requirements.txt
RUN chomd +x auto_down.sh
RUN crontab auto_down.cron
CMD python3 manage.py runserver 0:80