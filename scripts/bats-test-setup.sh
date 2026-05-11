#!/usr/bin/env bash
#
# Description: Set up the environment for running BATS tests.
# Usage: ./bats-test-setup.sh [options]
#

set -euo pipefail

sudo apt update -y
sudo apt install bats -y

git clone --separate-git-dir="$(mktemp -u)" https://github.com/bats-core/bats-support.git test_helper/bats-support && rm test_helper/bats-support/.git
git clone --separate-git-dir="$(mktemp -u)" https://github.com/bats-core/bats-assert.git test_helper/bats-assert && rm test_helper/bats-assert/.git
