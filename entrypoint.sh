#!/bin/sh
set -uex
echo Setting umask... 
umask $UMASK
chmod +rx /$LOCALAPPIMG
/bin/sh
exec "$@"
