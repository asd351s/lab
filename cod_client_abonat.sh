#!/usr/bin/env python3
import paho.mqtt.client as mqtt
def on_connect(client, userdata, flags, rc):
	print("Connected with result code "+str(rc))
	client.subscribe("topic/2022ro")
def on_message(client, userdata, msg):
	if msg.payload.decode() == "Buna ziua":
		print("S-a receptionat mesajul: Buna ziua")
		client.disconnect()
client = mqtt.Client()
client.connect("localhost",1883,60)
client.on_connect = on_connect
client.on_message = on_message
client.loop_forever()
