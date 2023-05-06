# Function definition

function(AddGitSubmodule dir)
# is going to try find the git
    find_package(Git REQUIRED)

    if (NOT EXISTS ${dir}/CMakeLists.txt)
        # set by previous line 5
        execute_process(COMMAND ${GIT_EXECUTABLE}
            submodule update --init --recursive -- ${dir}
            WORKING_DIRECTORY ${PROJECT_SOURCE_DIR})
    endif()

    # is adding the library to target list and its cmake file
    add_subdirectory(${dir})

endfunction(add_git_submodule)