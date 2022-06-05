#!/bin/bash

city=$(curl --silent ipinfo.io/city)

wf=$(curl --silent wttr.in/$city?format=3)

echo $wf
