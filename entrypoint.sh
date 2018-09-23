#!/bin/sh
set -uex
echo Setting umask... 
umask $UMASK
cp /app/$LOCALAPPIMG /
chmod a+x $LOCALAPPIMG
./$LOCALAPPIMG
