add_library(Library STATIC my_lib.cc)

# where to find header files
target_include_directories(Library PUBLIC "./")