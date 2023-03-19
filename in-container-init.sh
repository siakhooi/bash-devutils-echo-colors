#!/bin/bash

apt update -y

yes | unminimize

apt install -y man-db

apt install -y ./siakhooi-devutils-echo-colors_1.0.2_amd64.deb
