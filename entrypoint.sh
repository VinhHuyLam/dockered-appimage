#!/bin/sh
set -uex
echo Setting umask... 
umask $UMASK
cp /app/$LOCALAPPIMG /
chmod +rx /$LOCALAPPIMG
./$LOCALAPPIMG
