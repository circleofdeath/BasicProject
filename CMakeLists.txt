cmake_minimum_required (VERSION 3.10)
set (PROJECT_NAME Example)
project (${PROJECT_NAME})

set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -Wall -Werror -std=c++20 -O3 -march=native -fstack-protector-all -D_FORTIFY_SOURCE=2 -fno-common -fPIE -fPIC -fno-omit-frame-pointer")

# Windows don't have third-party ABI so make it static
if (WIN32)
    set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -static-libgcc -static-libstdc++")
    set (BUILD_SHARED_LIBS OFF)
endif ()

if (UNIX)
    set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address -flto")
endif ()

file (GLOB header_files "${PROJECT_SOURCE_DIR}/include/*.h")
file (GLOB source_files "${PROJECT_SOURCE_DIR}/src/*.cpp")

add_executable (${PROJECT_NAME} ${source_files} ${header_files})

target_link_libraries (${PROJECT_NAME})
target_include_directories (${PROJECT_NAME} PUBLIC "${PROJECT_SOURCE_DIR}/include")
