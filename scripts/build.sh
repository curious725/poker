#!/usr/bin/env bash

set -o errexit -o pipefail # Exit on error

source scripts/functions.sh

# Set the timestamp for building/testing the canary page
TIMESTAMP=`date +%s`

# Build the canary page
./scripts/build_canary_webpage.sh $TIMESTAMP

# Ensure the canary page has the correct values
./scripts/test_canary_webpage.sh $TIMESTAMP
