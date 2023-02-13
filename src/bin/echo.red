#!/bin/bash

STARTCOLOR=$'\e[1;31m'
ENDCOLOR=$'\e[0m'

echo -n "${STARTCOLOR}"
echo "$@"
echo -n "${ENDCOLOR}"
