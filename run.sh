#!/bin/sh

make
mkdir -p assets
mv ./Example ./assets/Lib
cd ./assets
./Example.sh
