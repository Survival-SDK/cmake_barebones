#!/usr/bin/env sh

prefix_error() {
    echo "Usage:\n./install.sh --prefix=<prefix>";
    exit 1;
}

get_prefix() {
    option=$(echo $1 | cut -d "=" -f 1)
    prefix=$(echo $1 | cut -d "=" -f 2)
    if [ "$option" != "--prefix" ]; then
        prefix_error
    fi
}

if [ -n "$1" ]; then
    get_prefix $1
else
    prefix=/usr/local
fi

mkdir -p $prefix/include &&
mkdir -p $prefix/lib/cmake &&
sed 's|@BB_PREFIX@|'$prefix'|g' ./makefiles/barebones.mk.in > $prefix/include/barebones.mk &&
rm -rf $prefix/lib/cmake/barebones &&
cp -R ./cmake/barebones $prefix/lib/cmake/barebones &&
echo cmake_barebones installed
