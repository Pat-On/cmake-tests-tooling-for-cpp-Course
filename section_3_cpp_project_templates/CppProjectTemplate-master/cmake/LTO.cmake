function(target_enable_lto)
    set(oneValueArgs TARGET ENABLE)
    # These variable are going to have attaches LTO_TARGET LTO_ENABLE
    # https://cmake.org/cmake/help/latest/command/cmake_parse_arguments.html
    cmake_parse_arguments(
        LTO
        "${options}"
        "${oneValueArgs}"
        "${multiValueArgs}"
        ${ARGN})

    include(CheckIPOSupported)
    check_ipo_supported(RESULT result OUTPUT output)
    if(result)
        message(STATUS "IPO/LTO is supported: ${LTO_TARGET}")
        set_property(TARGET ${LTO_TARGET} PROPERTY INTERPROCEDURAL_OPTIMIZATION
                                                   ${LTO_ENABLE})
    else()
        message(WARNING "IPO/LTO is not supported: ${LTO_TARGET}")
    endif()
endfunction()
