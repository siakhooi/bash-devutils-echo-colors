#!/bin/bash

STARTCOLOR=$'\e[1;31m'
ENDCOLOR=$'\e[0m'

echo -n "${STARTCOLOR}"
# shellcheck disable=SC2059
printf "$@"
echo -n "${ENDCOLOR}"
