#!/bin/bash

city=$(curl --silent ipinfo.io/city)

wf=" "

#wf+=$(curl --silent wttr.in/$city?format=3)
#wf+=$(curl --silent "wttr.in/$city?lang=pt-br&format=%l+%f+%C")
wf+=$(curl --silent "wttr.in/$city?lang=pt-br&format=%l+%f")

echo $wf
