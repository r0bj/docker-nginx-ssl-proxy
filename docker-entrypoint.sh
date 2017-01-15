#!/bin/bash

confd -onetime -backend env
exec nginx -g "daemon off;"
