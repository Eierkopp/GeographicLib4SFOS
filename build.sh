#!/bin/bash

cd $(dirname $0)

mkdir -p ~/rpmbuild/SOURCES
cp GeographicLib-$VERSION.tar.gz ~/rpmbuild/SOURCES

for target in $(sb2-config -f| grep -v default); do
    echo $target
    sb2 -t$target -m sdk-build rpmbuild -ba GeographicLib.spec
done

cp -r ~/rpmbuild/RPMS/* pkgs


