# add_executable(Executable main.cc)
add_executable(${EXECUTABLE_NAME} main.cc)


# target_link_libraries(Executable PUBLIC Library)
target_link_libraries(${EXECUTABLE_NAME} PUBLIC Library)
