#!/bin/sh

set -euxo pipefail

# Build images

for VERSION in $(seq 1 5); do
	docker build --build-arg VERSION=$VERSION -t local-registry.shaka.xyz:5000/myimage:$VERSION .
	docker push local-registry.shaka.xyz:5000/myimage:$VERSION
done

