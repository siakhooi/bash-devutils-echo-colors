#!/usr/bin/env bash

BATS_HELPER=test_helper
export BATS_HELPER

SOURCE_BIN=$(pwd)/src/bin
export SOURCE_BIN

TEST_RUN_NUMBER=$(date +%Y%m%d%H%M%S)

bats -r tests | tee bats-test-result-${TEST_RUN_NUMBER}.log 2>&1
