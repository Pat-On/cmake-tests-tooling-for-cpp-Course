# add_library(Library STATIC my_lib.cc)

# using variables
add_library(${LIBRARY_NAME} STATIC my_lib.cc)

# where to find header files
# target_include_directories(Library PUBLIC "./")
target_include_directories(${LIBRARY_NAME}  PUBLIC 
    "./"
    # including configure files from build
    "${CMAKE_BINARY_DIR}/configured_files/include"
    )


