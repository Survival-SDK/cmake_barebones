# bb_add_compile_options(LANG {C|C++} OPTIONS <compiler_options_var>)
function (bb_add_compile_options)
    set(oneValueArgs LANG OPTIONS)

    cmake_parse_arguments(_BB_ADD_COMPILE_OPTIONS "" "${oneValueArgs}" "" ${ARGN})

    if (NOT ${_BB_ADD_COMPILE_OPTIONS_LANG} STREQUAL C
        AND NOT ${_BB_ADD_COMPILE_OPTIONS_LANG} STREQUAL C++)
        return()
    endif()

    if (${CMAKE_C_COMPILER_ID} STREQUAL GNU
        OR ${CMAKE_C_COMPILER_ID} STREQUAL Clang
    )
        bb_process_common_flag_availability(
            FLAG -fmax-errors=100
            FALLBACK ""
            OPTION BB_FMAX_ERRORS_100
        )

        set(
            ${_BB_ADD_COMPILE_OPTIONS_OPTIONS}
            "${${_BB_ADD_COMPILE_OPTIONS_OPTIONS}};-Wextra -Wshadow
            -Wunused-result -Wno-unused-parameter -Wno-sign-conversion
            ${BB_FMAX_ERRORS_100}"
            PARENT_SCOPE
        )
    endif()

    set(
        ${_BB_ADD_COMPILE_OPTIONS_OPTIONS}
        "${${_BB_ADD_COMPILE_OPTIONS_OPTIONS}};-Wall" PARENT_SCOPE
    )
    if(${BB_WERROR})
        set(${_BB_ADD_COMPILE_OPTIONS_OPTIONS}
            "${${_BB_ADD_COMPILE_OPTIONS_OPTIONS}};-Werror" PARENT_SCOPE)
    endif()
endfunction()
