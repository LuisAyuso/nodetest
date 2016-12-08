project(ShaderNodes)
cmake_minimum_required(VERSION 2.8)

# look for modules
# ================

set (CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
include (nodeeditor)

# look for source files:
# ======================
file(GLOB_RECURSE sources "${CMAKE_CURRENT_SOURCE_DIR}/code/src/*.cpp" )

#  Configure build 
#  ===============
include_directories ( "code/include/" )
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14")
add_executable(${PROJECT_NAME} ${sources} )
