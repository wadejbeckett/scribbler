#!/bin/sh
# Builds scribbler.xpi from src/ plus the licence, skipping hidden and backup files.
set -e
cd "$(dirname "$0")"
rm -f scribbler.xpi
(cd src && zip -qrX ../scribbler.xpi . -x '.*' -x '*/.*' -x '*~' -x '*.bak' -x '*.swp' -x '*#*' -x '*.orig')
zip -qjX scribbler.xpi LICENSE
echo "Built $(pwd)/scribbler.xpi"
