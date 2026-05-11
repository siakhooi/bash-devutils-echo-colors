#!/usr/bin/env bash
#
# Description: outputs the given arguments in red color.
# Usage: printf.red [options]
#

set -euo pipefail

readonly STARTCOLOR=$'\e[1;31m'
readonly ENDCOLOR=$'\e[0m'

echo -n "${STARTCOLOR}"
# shellcheck disable=SC2059
printf "$@"
echo -n "${ENDCOLOR}"
