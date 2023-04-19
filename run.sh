#!/bin/bash

mosquitto -c mosquitto.conf &

sleep 5 # give some time for the mosquitto brokers to start before we start the federators

./mqtt-fed -c mqtt-fed.toml &

wait -n

exit $?
