#!/bin/bash

readonly command=echo.red

while true; do
    if read -r line; then
        "$command" -e "${line}"
    elif [[ -n $line ]]; then
        "$command" -e -n "${line}"
    else
        break
    fi
done
