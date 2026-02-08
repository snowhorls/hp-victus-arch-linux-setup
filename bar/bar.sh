#!/bin/sh

free -h | awk 'NR == 2 {print $3}'

## echo "󰋗"

case "$BLOCK_BUTTON" in
    1) st -c floating -g 50x20+2000+0 htop ;;
esac
