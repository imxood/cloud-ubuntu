#!/bin/bash
#
# update-records.sh - tools/update-records.sh 0 $PWD/ $PWD/recordings/
#

TOP_DIR=$(cd $(dirname $0)/../ && pwd)

GENERATE_TOOL=${TOP_DIR}/system/web/noVNC/utils/websockify/websockify/vtools/wrapper.py

VNC_RECORD_ACTION=$1
VNC_RECORD_DIR=$2

[ -z "$VNC_RECORD_ACTION" ] && VNC_RECORD_ACTION=0
[ -z "$VNC_RECORD_DIR" ] && VNC_RECORD_DIR=${TOP_DIR}/recordings/

if [ ! -f $GENERATE_TOOL ]; then
    # https://github.com/tinyclub/vtools.git
    git submodule update --init ${TOP_DIR}/system/web/noVNC/utils/websockify/websockify/vtools
fi

${GENERATE_TOOL} $VNC_RECORD_DIR $VNC_RECORD_ACTION
