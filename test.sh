#!/bin/bash
IMAGE=phantomjs-static
OS_IMAGES="ubuntu:15.04 ubuntu:14.04 ubuntu:12.04 debian:jessie debian:wheezy centos:7 centos:6.6 centos:6 fedora:22 fedora:21 fedora:20"

for image in $OS_IMAGES; do
  echo --- $image ---
  docker run -it --rm -v $PWD/phantomjs:/usr/bin/phantomjs $image phantomjs --version
done;
