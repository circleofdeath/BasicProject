@echo off
setlocal enabledelayedexpansion

for /f "delims=" %%i in ('git ls-files --ignored --exclude-standard --directory --others ^| findstr /v "^\.git/"') do (
    if exist "%%i" (
        if exist "%%i\" (
            echo Deleting directory: %%i
            rmdir /s /q "%%i"
        ) else (
            echo Deleting file: %%i
            del /q "%%i"
        )
    )
)

endlocal
