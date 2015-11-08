# docker-microperl [![Build Status](https://travis-ci.org/hosuaby/docker-microperl.svg?branch=master)](https://travis-ci.org/hosuaby/docker-microperl)  
Smallest Perl build ([microperl](https://www.safaribooksonline.com/library/view/building-embedded-linux/059600222X/ch04s05.html)) in the container made from scratch.  
Size : 1.5 Mb

## Pull from Docker Hub
Get ready image from [Docker Hub repository](https://hub.docker.com/r/hosuaby/microperl/):
```sh
$ docker pull hosuaby/microperl
```

## Build locally
To build image locally do:
```sh
$ ./build.sh
```

This command starts builder container, downloads Perl sources from [CPAN](http://www.cpan.org/src/) and builds statically linked `microperl`
executable. After executable is put into smallest docker container called
`scratch`. Name of result image is `hosuaby/microperl`.  
Try it:
```sh
$ docker run --rm hosuaby/microperl -e 'print "Microperl rocks!!!\n"'
```

## What it can be used for
Tiny embedded Perl can run on tens and hundreds containers. You can use
it to simulate network of connected devices, captors, nodes, social network
users, etc.

## Wanna contribute ?
Perl is wroten in `C`. The sources that provided by CPAN rarely build without
do some small fixes. I wrote the patch for version `5.23.4`. Other versions will
come out. But I am not C developer. I do not assure that my fixes done right. If
you know how to build better and smaller C binaries, your help will be welcome!
