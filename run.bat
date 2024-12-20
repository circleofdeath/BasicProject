@echo off

rem code here made by chatGPT, i don't know windows syntax and commands
rem check cmake installation

where cmake >nul 2>nul
if %errorlevel% neq 0 (
    echo CMake is not installed. Please install CMake.
    exit /b 1
)

cmake --build . --config Debug

if exist .\Example.exe (
    if not exist .\assets (
        mkdir .\assets
    )

    move .\Example.exe .\assets\Example.exe
    cd .\assets
    .\Example.exe
) else (
    echo "Executable not found. Build may have failed."
)
