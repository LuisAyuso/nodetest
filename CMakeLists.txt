project(ShaderNodes)
cmake_minimum_required(VERSION 2.8)

# look for modules
# ================

set (CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

# QT stuff
set(CMAKE_AUTOMOC ON)
find_package(Qt5 COMPONENTS
             Core
             Widgets
             Gui
             OpenGL)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# look for externals
# ================
add_subdirectory(extern)

# look for source files:
# ======================
file(GLOB_RECURSE sources "${CMAKE_CURRENT_SOURCE_DIR}/code/src/*.cpp" )

#  Configure build 
#  ===============
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(noderender ${sources})

target_include_directories(noderender PRIVATE
            ${CMAKE_CURRENT_SOURCE_DIR}/code/include)

target_link_libraries(noderender 
                      nodes
                      Qt5::Core
                      Qt5::Widgets
                      Qt5::Gui
                      Qt5::OpenGL)

