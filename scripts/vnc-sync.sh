#!/bin/bash
#
# vnc-sync.sh -- Add vplayer and vtools in system/web/noVNC, should run before building tinylab/cloud-ubuntu-web
#

TOP_DIR=$(cd $(dirname $0)/../ && pwd)

# https://github.com/tinyclub/vplayer.io.git
git submodule update --init --remote ${TOP_DIR}/system/web/noVNC/

# https://github.com/tinyclub/vtools.git
git submodule update --init --remote ${TOP_DIR}/system/web/noVNC/utils/websockify/websockify/vtools
