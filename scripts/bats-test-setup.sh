#!/bin/sh
set -e

sudo apt update -y
sudo apt install bats -y

git submodule add https://github.com/bats-core/bats-support.git test_helper/bats-support
git submodule add https://github.com/bats-core/bats-assert.git test_helper/bats-assert
