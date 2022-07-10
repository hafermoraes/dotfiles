#!/bin/bash

# data, número da semana e hora atuais
data+=$(date '+(W%U) %Y-%m-%d %H:%M')

echo -e "$data"
