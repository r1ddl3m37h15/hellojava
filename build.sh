#!/bin/bash

# 
# build the java app with a container
#

set -e 

hostname
whoami
pwd

test -z CI_JOB_ID || CI_JOB_ID=00001
test -z CI_PIPELINE_URL || CI_PIPELINE_URL=localhost

docker run --rm \
  -v "$PWD":/usr/src/myapp \
  -w /usr/src/myapp \
  -e CI_JOB_ID=$CI_JOB_ID \
  -e CI_PIPELINE_URL=$CI_PIPELINE_URL \
  r1ddl3m37h15/jdk8-ant:v2 \
  ant $*
