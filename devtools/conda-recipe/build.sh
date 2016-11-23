#!/bin/bash

set -ex

# Build
cd $SRC_DIR
make

# Test
cd $SRC_DIR/parser-test-app/test
./test.sh

# Copy files
cd $SRC_DIR
mkdir -p $PREFIX/bin $PREFIX/lib $PREFIX/include
cp -r bin/* $PREFIX/bin
cp -r lib/* $PREFIX/lib
cp -r include/* $PREFIX/include
