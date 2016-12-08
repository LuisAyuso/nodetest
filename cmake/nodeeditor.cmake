cmake_minimum_required(VERSION 2.8.8)

# Enable ExternalProject CMake module
include(ExternalProject)

# Download and install GoogleTest
ExternalProject_Add(
    nodeeditor
    GIT_REPOSITORY https://github.com/paceholder/nodeeditor
    PREFIX ${CMAKE_CURRENT_BINARY_DIR}/nodeeditor
    # forward toolchain
    CMAKE_ARGS 
        -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER} 
        -DCMAKE_C_COMPILER_ARG1=${CMAKE_C_COMPILER_ARG1}
        -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER} 
        -DCMAKE_CXX_COMPILER_ARG1=${CMAKE_CXX_COMPILER_ARG1}
        -DCMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH}
    # Disable install step
    INSTALL_COMMAND ""
)

