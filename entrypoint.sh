#!/bin/bash

VERSION="$(cat /version)"
echo "Running $VERSION"

for WAIT in $(seq 0 10 "${MAX_WAIT:-60}"); do
	echo "Version: $VERSION, Wait: $WAIT"
	sleep 10
done

exit "${EXIT_CODE:-1}"
