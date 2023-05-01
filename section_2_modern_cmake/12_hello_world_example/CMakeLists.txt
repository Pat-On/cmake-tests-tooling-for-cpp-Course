
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

# what we want to compile - similar to webpack
add_executable(Executable main.cc)


