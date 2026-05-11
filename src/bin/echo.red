#!/usr/bin/env bash
#
# Description: outputs the given arguments in red color.
# Usage: echo.red [options]
#

set -euo pipefail

readonly STARTCOLOR=$'\e[1;31m'
readonly ENDCOLOR=$'\e[0m'

echo -n "${STARTCOLOR}"
echo "$@"
echo -n "${ENDCOLOR}"
