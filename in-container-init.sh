#!/bin/bash

apt update -y

yes | unminimize

apt install -y man-db

apt install -y ./siakhooi-devutils-echo-colors_1.1.0_amd64.deb
