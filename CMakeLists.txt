cmake_minimum_required (VERSION 3.10)
set (PROJECT_NAME Example)
project (${PROJECT_NAME})

set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -Wall -Werror -std=c++20")

file (GLOB header_files "${PROJECT_SOURCE_DIR}/include/*.h")
file (GLOB source_files "${PROJECT_SOURCE_DIR}/src/*.cpp")

add_executable (${PROJECT_NAME} ${source_files} ${header_files})

target_link_libraries (${PROJECT_NAME})
target_include_directories (${PROJECT_NAME} PUBLIC "${PROJECT_SOURCE_DIR}/include")
