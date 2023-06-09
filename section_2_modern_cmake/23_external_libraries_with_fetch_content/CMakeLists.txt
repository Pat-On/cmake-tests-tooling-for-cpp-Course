
# 0 create source and cmakefile
# 1 mkdir build
# 2 cd build
# 3 cmake .. <-- generating the build files / configure the project
# 4 cmake --build .
# 5 ./Executable

cmake_minimum_required(VERSION 3.22)

project(
    CppProjectTemplate
    VERSION 1.0.0
    LANGUAGES C CXX
)



set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(LIBRARY_NAME Library) 
set(EXECUTABLE_NAME Executable)

set(CMAKE_MODULE_PATH, "${PROJECT_SOURCE_DIR}/cmake/")
include(FetchContent) # this function is included in the modern c++ proiject

# If you have repositories that you want to include in projet but are not cmake you need to use method from the video 21 - gitsubmodule

# git lab is going to be clone into out boot directory - use for CMake reposityr
FetchContent_Declare(
    nlohmann_json
    GIT_REPOSITORY https://github.com/nlohmann/json
    GIT_TAG v3.11.2
    GIT_SHALLOW TRUE
)
# this functions is going to load the library into our project
FetchContent_MakeAvailable(nlohmann_json)

FetchContent_Declare(
    fmt
    GIT_REPOSITORY https://github.com/fmtlib/fmt
    GIT_TAG 9.1.0
    GIT_SHALLOW TRUE)
FetchContent_MakeAvailable(fmt)

FetchContent_Declare(
    spdlog
    GIT_REPOSITORY https://github.com/gabime/spdlog
    GIT_TAG v1.11.0
    GIT_SHALLOW TRUE)
FetchContent_MakeAvailable(spdlog)

FetchContent_Declare(
    cxxopts
    GIT_REPOSITORY https://github.com/jarro2783/cxxopts
    GIT_TAG v3.0.0
    GIT_SHALLOW TRUE)
FetchContent_MakeAvailable(cxxopts)

FetchContent_Declare(
    Catch2
    GIT_REPOSITORY https://github.com/catchorg/Catch2
    GIT_TAG v2.13.9
    GIT_SHALLOW TRUE)
FetchContent_MakeAvailable(Catch2)

add_subdirectory(configured)
add_subdirectory(external)
add_subdirectory(src) 
add_subdirectory(app)


