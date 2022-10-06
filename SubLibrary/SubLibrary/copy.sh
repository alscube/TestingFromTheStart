#!/bin/bash

# $0 - exec

echo "arg 1: $1"
echo "arg 2: $2"

echo "PWD $(PWD)"

cp $1/*.h $2/../../.
cp $2/*.dylib $2/../../.

