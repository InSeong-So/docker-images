#!/bin/sh
. ./setenv.sh

docker-machine ls -q | while read MACHINE; do
  case "$MACHINE" in
    $prefix-*) echo "Found machine: $MACHINE. Going to destroy it..." && docker-machine rm -f $MACHINE ;;
  esac
done
