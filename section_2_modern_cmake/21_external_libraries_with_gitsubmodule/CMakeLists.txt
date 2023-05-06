
# 0 create source and cmakefile
# 1 mkdir build
# 2 cd build
# 3 cmake .. <-- generating the build files / configure the project
# 4 cmake --build .
# 5 ./Executable


# normal minimum like in other solutions
cmake_minimum_required(VERSION 3.22)

project(
    CppProjectTemplate
    VERSION 1.0.0
    LANGUAGES C CXX
)

# adding new library that is not executable
# move this library to the other sub CMakeLists.txt
# add_library(Library STATIC src/my_lib.cc)


# what we want to compile - similar to webpack
# add_executable(Executable app/main.cc)

# linking executable with library
# target_link_libraries(Executable PUBLIC Library )

# way to check if only library compile - we can test by this if everything is ok
# cmake --build . --target Library


# VERY IMPORTANT TO SET UP - IF NOT IT MIGHT BREAK ETC
# overwriting the standards
set(CMAKE_CXX_STANDARD 17)
# fully implemented standard  of chosen version aboce. if you have 20 you can go lower
set(CMAKE_CXX_STANDARD_REQUIRED ON)
# G++ and gcc have some featurs implemented that are not stated in c++ standard
# and these are defined as a extension
# you can add them or turn off
set(CMAKE_CXX_EXTENSIONS OFF)


# -D variable | changing the value of variable via CLI
# cmake .. -DCOMPILE_EXECUTABLE=ON

# turning something on or off
option(COMPILE_EXECUTABLE "Whether to compile the executable" ON) # text is hint


# creating variable in the CMake
# set(LIBRARY_NAME "Library") # always try to create variables in most uperstream CMake 
# and then it can be used in every file
# it is common pattern to follow, but like usually not all libraries follow it
# this approach is bit less error prone
set(LIBRARY_NAME Library) # cmake is going to adjust to string
set(EXECUTABLE_NAME Executable)


# LECTURE 21
set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/")

include(AddGitSubmodule)

add_git_submodule(external/json)

# pointing to configured directory
add_subdirectory(configured)

add_subdirectory(external)

# tell CMake where to find the subdirectories to look for other CMakeLists.txt files
add_subdirectory(src) # library needs to define first

add_subdirectory(app)


# you can use some logic like string comparision in CMake too
# conditional compiling of app (executable)
# if(COMPILE_EXECUTABLE)
#     add_subdirectory(app)
# else()
#     message("W/o exe. compiling")
# endif()