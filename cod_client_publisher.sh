#!/usr/bin/env python3
import paho.mqtt.client as mqtt
client = mqtt.Client()
client.connect("localhost",1883,60)
client.publish("topic/2022ro", "Buna ziua");
client.disconnect();
