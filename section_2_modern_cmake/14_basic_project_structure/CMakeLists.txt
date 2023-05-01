
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
add_library(Library STATIC my_lib.cc)


# what we want to compile - similar to webpack
add_executable(Executable main.cc)

# linking executable with library
target_link_libraries(Executable PUBLIC Library )

# way to check if only library compile - we can test by this if everything is ok
# cmake --build . --target Library