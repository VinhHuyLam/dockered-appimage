#!/bin/sh
set -uex
echo Setting umask... 
umask $UMASK
/bin/sh
exec "$@"
