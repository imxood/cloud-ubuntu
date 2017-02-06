#!/bin/bash
#
# proxy-server.sh -- launch the proxy server
#

TOP_DIR=$(cd $(dirname $0) && pwd)/../

PORT_MAP="-p 80:80" HOST_NAME=localhost EXTRA_ARGS="--cpuset-cpus=1 --memory=96M" ${TOP_DIR}/run proxy
