configure_file(
    "config.hpp.in" # we cutting ofo in
    # absolute path of build directory 
    "${CMAKE_BINARY_DIR}/configured_files/include/config.hpp" ESCAPE_QUOTES ;
)