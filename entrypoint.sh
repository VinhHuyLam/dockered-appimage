#!/bin/sh
set -uex
echo Setting umask... 
umask $UMASK
./$local.AppImage
/bin/sh
exec "$@"
