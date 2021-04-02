#!/bin/bash
hostname
whoami
pwd

#docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp hammady/centos-jdk8-ant:latest ant
docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp jdk8-ant:latest ant $*
