#!/bin/sh
set -ex

system-docker cp /usr/local/bin/wonka.sh console:/usr/bin/docker-compose
system-docker cp /usr/local/bin/wonka.sh console:/usr/bin/fig
