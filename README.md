# C++ simple project

this is template for C++ cross-platform (Unix/Windows) projects that can also work with libraries

## Setting name

to set name required BEFORE BUILDING (!!!) list thouth every file and replace <br>
Example with your project name, this includes:

 - Executables
 - Project name specific
 - `Example.sh` / `README.txt`

If you alrealy builded a project run `clean.sh` (linux) or `clean.bat` (windows) <br>
This script removes all build files (a.k.a. in `.gitignore`)

## Building

### Unix
1. setup project
2. run `build.sh` (if can't run `chmod +x build.sh`)
3. you can do work in IDE

### Windows
1. setup project
2. run `build.bat`
3. you can do work in IDE

## Adding liblaries

adding libs the same as in every CMakeLists.txt but don't forget add <br>
lib to the "`Example.sh`" field, space separated
