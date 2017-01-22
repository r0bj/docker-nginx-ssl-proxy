#!/bin/bash

if [ -n "$TZ" ] && [ -e /usr/share/zoneinfo/$TZ ]; then
	echo "$TZ" > /etc/timezone
	dpkg-reconfigure -f noninteractive tzdata 2>/dev/null
fi

confd -onetime -backend env
exec nginx -g "daemon off;"
