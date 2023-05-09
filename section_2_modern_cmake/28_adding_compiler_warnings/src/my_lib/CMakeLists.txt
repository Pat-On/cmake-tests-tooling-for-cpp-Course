set(LIBRARY_SOURCES
    "my_lib.cc")
set(LIBRARY_HEADERS
    "my_lib.h")

set(LIBRARY_INCLUDES
    "./"
    "${CMAKE_BINARY_DIR}/configured_files/include"
    )




# using variables
add_library(${LIBRARY_NAME} 
    STATIC 
    ${LIBRARY_SOURCES}
    ${LIBRARY_HEADERS}
    )

# where to find header files
# target_include_directories(Library PUBLIC "./")
target_include_directories(${LIBRARY_NAME}  PUBLIC 
        ${LIBRARY_INCLUDES})

# Linking library to our librar
target_link_libraries(${LIBRARY_NAME} PUBLIC
    nlohmann_json::nlohmann_json
    fmt::fmt
    spdlog::spdlog
    cxxopts::cxxopts)


