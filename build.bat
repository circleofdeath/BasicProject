@echo off

rem code here made by chatGPT, i don't know windows syntax and commands
rem check cmake installation

where cmake >nul 2>nul
if %errorlevel% neq 0 (
    echo CMake is not installed. Please install CMake.
    exit /b 1
)

cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug .
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=YES .
