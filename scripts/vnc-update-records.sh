#!/bin/bash
#
# update-records.sh - tools/update-records.sh 0 $PWD/ $PWD/recordings/
#

TOP_DIR=$(cd $(dirname $0) && pwd)/../

GENERATE_TOOL=${TOP_DIR}/system/web/noVNC/utils/websockify/websockify/generate-records.py

VNC_RECORD_ACTION=$1
VNC_WWW_DIR=$2
VNC_RECORD_DIR=$3

[ -z "$VNC_RECORD_ACTION" ] && VNC_RECORD_ACTION=0
[ -z "$VNC_RECORD_DIR" ] && VNC_RECORD_DIR=${TOP_DIR}/noVNC/recordings/
[ -z "$VNC_WWW_DIR" ] && VNC_WWW_DIR=${TOP_DIR}/noVNC/

${GENERATE_TOOL} $VNC_RECORD_DIR $VNC_RECORD_ACTION $VNC_WWW_DIR
