
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


# tell CMake where to find the subdirectories to look for other CMakeLists.txt files
add_subdirectory(src) # library needs to define first
add_subdirectory(app)