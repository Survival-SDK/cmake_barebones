# CXX_LIBRARY_FOUND - true if library and headers were found
# CXX_LIBRARY_LIBRARIES - library directories

if (CXX_LIBRARY_LIBRARIES)
    set(CXX_LIBRARY_FOUND TRUE)
else ()
    message(STATUS "Looking for C++ libraries/options")

    bb_process_cxx_flag_availability(STATIC_LIBSTDCXX "-static-libstdc++" ""
        QUIET)
    if (STATIC_LIBSTDCXX)
        set(CXX_LIBRARY_LIBRARIES ${STATIC_LIBSTDCXX} CACHE STRING "")
    else()
        bb_process_cxx_flag_availability(STDLIB_LIBCXX "--stdlib=libc++" ""
            QUIET)
        if (STDLIB_LIBCXX)
            set(CXX_LIBRARY_LIBRARIES ${STDLIB_LIBCXX} CACHE STRING "")
        endif()
    endif()

    if (CXX_LIBRARY_LIBRARIES)
        message(STATUS
            "Looking for C++ libraries/options - ${CXX_LIBRARY_LIBRARIES}")
        set(CXX_LIBRARY_FOUND TRUE)
    else()
        message(STATUS "Looking for C++ libraries/options - not found")
        message(FATAL_ERROR "Could not find C++ libraries/options")
    endif()
endif ()
