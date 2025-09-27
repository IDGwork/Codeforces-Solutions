#!/bin/zsh
cmake -S . -B cmake-build-debug-system -DCMAKE_CXX_COMPILER=/opt/homebrew/bin/g++-15
cmake --build cmake-build-debug-system
