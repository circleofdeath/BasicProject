#!/bin/sh

ninja
mkdir -p assets
mv ./Example ./assets/Example
cd ./assets
./Example
