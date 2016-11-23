#!/bin/bash

set -ex

# Assembiles
BIN_DIR=$PREFIX/bin
TEST_DIR=$SRC_DIR/parser-test-app/test
$PREFIX/bin/Assemblies $TEST_DIR/2BUK.cif
if ! [[ -e $TEST_DIR/2BUK-1.cif && -e $TEST_DIR/2BUK-2.cif && -e $TEST_DIR/2BUK-3.cif && \
        -e $TEST_DIR/2BUK-4.cif && -e $TEST_DIR/2BUK-PAU.cif && -e $TEST_DIR/2BUK-XAU.cif ]] ; then
    echo "Error! Some assemblies were not created!"
    exit 1
fi
