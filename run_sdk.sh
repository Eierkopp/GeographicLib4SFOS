#!/bin/bash

set -x

VERSION=2.7

cd $(dirname $0)

WD=$(pwd)

[ -f GeographicLib-$VERSION.tar.gz ] || wget https://sourceforge.net/projects/geographiclib/files/distrib-C%2B%2B/GeographicLib-$VERSION.tar.gz/download -O GeographicLib-$VERSION.tar.gz

MOUNT=/home/mersdk/gl

[ -d pkgs ] || mkdir pkgs

chmod 777 pkgs


docker run -it -e VERSION=$VERSION -v$WD:$MOUNT coderus/sailfishos-platform-sdk:latest $MOUNT/build.sh
# docker run -it -e VERSION=$VERSION -v$WD:$MOUNT coderus/sailfishos-platform-sdk:latest /bin/bash
