cmake_minimum_required(VERSION 3.16)
project(CodeforcesSolutions LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Compiler flags
add_compile_options(-O2 -Wall -Wextra -Wshadow -Wconversion)

# Gather all problem sources recursively
file(GLOB_RECURSE CF_SOURCES CONFIGURE_DEPENDS
        "contests/**/*.cpp"
)

# Create executables for each problem
foreach(SRC ${CF_SOURCES})
    get_filename_component(NAME_WE ${SRC} NAME_WE)          # e.g. Watermelon
    get_filename_component(DIR ${SRC} DIRECTORY)            # e.g. contests/Practice/A
    file(RELATIVE_PATH RELPATH ${CMAKE_SOURCE_DIR} ${SRC})  # contests/Practice/A/Watermelon.cpp

    # Replace "/" with "_" → contests/Practice/A/Watermelon.cpp → contests_Practice_A_Watermelon
    string(REPLACE "/" "_" TARGET_NAME ${RELPATH})
    string(REPLACE ".cpp" "" TARGET_NAME ${TARGET_NAME})

    # Strip the leading "contests_" → contests_Practice_A_Watermelon → Practice_A_Watermelon
    string(REPLACE "contests_" "" TARGET_NAME ${TARGET_NAME})

    add_executable(${TARGET_NAME} ${SRC})
endforeach()