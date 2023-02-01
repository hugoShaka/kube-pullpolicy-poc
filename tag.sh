#!/bin/sh

set -euxo pipefail

# Build images

VERSION="$1"
docker tag local-registry.shaka.xyz:5000/myimage:$VERSION local-registry.shaka.xyz:5000/myimage:floating-tag
docker push local-registry.shaka.xyz:5000/myimage:floating-tag

