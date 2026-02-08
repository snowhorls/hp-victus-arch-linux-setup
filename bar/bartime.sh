#!/bin/sh
date | awk '{print $4}'


case "$BLOCK_BUTTON" in
    1) st -c floating -g 50x20+2000+0 alsamixer ;;
esac
