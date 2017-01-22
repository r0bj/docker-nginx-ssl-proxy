#!/bin/bash

if [ -n "$TZ" ] && [ -e /usr/share/zoneinfo/$TZ ]; then
	echo "$TZ" > /etc/timezone
	dpkg-reconfigure -f noninteractive tzdata
fi

confd -onetime -backend env
exec nginx -g "daemon off;"
