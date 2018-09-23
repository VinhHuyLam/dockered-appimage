#!/bin/sh
set -uex
echo Setting umask... 
umask $UMASK
cp /app/$LOCALAPPIMG /
./$LOCALAPPIMG --appimage-extract
