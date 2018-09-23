#!/bin/sh
set -uex
echo Setting umask... 
umask $UMASK
echo Starting AppImage
./$local.AppImage
/bin/sh
exec "$@"
