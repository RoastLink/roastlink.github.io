#!/bin/sh

TEMP=$(mktemp)
env|grep -v PATH>$TEMP

exec docker run --rm \
		--env-file $TEMP \
                --ipc host \
		-v $(pwd):$(pwd) \
		-w $(pwd) \
		-v /mnt:/mnt:shared \
		-v /media:/media:shared \
		-v /dev:/host/dev \
		-v /var/run:/var/run \
		-v /run:/run \
		docker/compose:1.13.0 $@
rm $TEMP
