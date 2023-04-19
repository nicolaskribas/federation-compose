FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-add-repository ppa:mosquitto-dev/mosquitto-ppa
RUN apt-get update
RUN apt-get install -y mosquitto

COPY run.sh run.sh
COPY mosquitto.conf mosquitto.conf
COPY mqtt-fed mqtt-fed

CMD ./run.sh

EXPOSE 1883
