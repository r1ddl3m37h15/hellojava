#!/bin/bash

# 
# build the java app with a container
#

set -e 

hostname
whoami
pwd

test -z LOG_URL || LOG_URL=localhost
test -z JOB_NUMBER || JOB_NUMBER=00001

docker run --rm \
  -v "$PWD":/usr/src/myapp \
  -w /usr/src/myapp \
  -e JOB_NUMBER=$JOB_NUMBER \
  -e LOG_URL=$LOG_URL \
  r1ddl3m37h15/jdk8-ant:latest \
  ant $*
