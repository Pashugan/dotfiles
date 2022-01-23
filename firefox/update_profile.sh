#!/bin/bash
set -e

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
readonly SCRIPT_DIR

echo "$SCRIPT_DIR/user.js/update.sh -ldo $SCRIPT_DIR/../private/firefox/user-overrides.js"
