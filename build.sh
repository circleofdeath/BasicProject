#!/bin/sh

# checking cmake installation
if ! command -v cmake &> /dev/null; then
    echo "CMake is not installed. Attempting to install..."

    if command -v apt-get &> /dev/null; then
        sudo apt-get update
        sudo apt-get install -y cmake
    elif command -v yum &> /dev/null; then
        sudo yum install -y cmake
    elif command -v dnf &> /dev/null; then
        sudo dnf install -y cmake
    elif command -v pacman &> /dev/null; then
        sudo pacman -S cmake --noconfirm   
    else
        echo "Package manager not found! Please install cmake manually."
        exit 1
    fi
else
    echo "CMake is already installed."
fi

cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug .
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=YES .
