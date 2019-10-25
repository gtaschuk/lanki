#!/bin/bash

case $CI_COMMIT_REF_NAME in
  master) export NAMESPACE=mis-dev;;
  *) echo "ERROR: Couldn't set NAMESPACE." >&2; exit 1;;
esac
