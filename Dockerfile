FROM ubuntu:18.04

RUN apt-get update && apt-get install -y python3-venv 

COPY ./start.sh /
COPY ./requirements.txt /
COPY ./hello_world.py / 
COPY ./bin /
COPY ./include /
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
