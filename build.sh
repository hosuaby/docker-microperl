#!/bin/bash

# Get directory of this script
SCRIPT=`realpath -s $0`
BASEDIR=`dirname $SCRIPT`

# Recreate built directory
rm -rf $BASEDIR/built
mkdir $BASEDIR/built

# Create image of container that will build microperl
docker build -f Dockerfile-builder -t hosuaby/microperl-builder .

# Launch builder container
docker run --rm \
    -v $BASEDIR/built:/export \
    hosuaby/microperl-builder

# Build main image
docker build -t hosuaby/microperl .

# Test main container
docker run --rm hosuaby/microperl \
    -e 'print "\n\tPerl rocks!!!\n\tYou run microperl v$] inside Docker\n\n"'

# Clean up
docker rmi hosuaby/microperl-builder
