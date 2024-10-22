#!/usr/bin/env bash

BATS_HELPER=test_helper
export BATS_HELPER

SOURCE_BIN=$(pwd)/src/bin
export SOURCE_BIN

TEST_RUN_NUMBER=$(date +%Y%m%d%H%M%S)
readonly log_file="bats-test-result-${TEST_RUN_NUMBER}.log"

bats -r tests | tee "$log_file" 2>&1
