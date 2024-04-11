#!/usr/bin/env bash

BATS_HELPER=test_helper
export BATS_HELPER

CUSTOM_LOG=bats-test-custom.log
export CUSTOM_LOG

SOURCE_BIN=$(pwd)/src/bin
export SOURCE_BIN

bats -r tests | tee bats-test-result.log
