#!/bin/bash


read -p "Cluster Address (ec2-xxx-...): " cluster

read -p "Drag and drop the key (.pem): " chiave

if [ -f "$chiave" ]; then

comando="ssh -N -i '$chiave' hadoop@$cluster -L 8088:$cluster:8088 -L 19888:$cluster:19888 -L 20888:$cluster:20888"

echo "Tunnel started... press CTRL+C to close"

eval "$comando"

else

echo "File not found!"

fi