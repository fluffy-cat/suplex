#!/usr/bin/env sh

# Setup time zone
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime
echo $TZ > /etc/timezone

python -m suplex 
