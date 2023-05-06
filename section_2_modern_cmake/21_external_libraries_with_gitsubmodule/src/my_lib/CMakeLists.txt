# list that store the array of all files 
set(LIBRARY_SOURCES
    "my_lib.cc"
    )
set(LIBRARY_HEADERS
    "my_lib.h"    
    )

# add_library(Library STATIC my_lib.cc)

# using variables
add_library(${LIBRARY_NAME} 
    STATIC 
    ${LIBRARY_SOURCES}
    ${LIBRARY_HEADERS}
    )

# where to find header files
# target_include_directories(Library PUBLIC "./")
target_include_directories(${LIBRARY_NAME}  PUBLIC 
    "./"
    # including configure files from build
    "${CMAKE_BINARY_DIR}/configured_files/include"
    )


