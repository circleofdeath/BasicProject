#!/bin/sh

# make sure cmake, codelite installed
cmake -G "CodeLite - Ninja" -DCMAKE_BUILD_TYPE=Debug .
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=YES .
