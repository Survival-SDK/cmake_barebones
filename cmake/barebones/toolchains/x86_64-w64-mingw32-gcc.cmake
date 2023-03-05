set(BB_TRIPLET x86_64-w64-mingw32)
set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR x86_64)
if (${CMAKE_HOST_SYSTEM_NAME} STREQUAL Windows)
    set(CMAKE_CXX_COMPILER x86_64-w64-mingw32-gcc)
    set(CMAKE_CXX_COMPILER x86_64-w64-mingw32-g++)
    set(CMAKE_RC_COMPILER x86_64-w64-mingw32-windres)
    set(CMAKE_MAKE_PROGRAM gnumake.exe CACHE FILEPATH "" FORCE)
    set(CMAKE_FIND_ROOT_PATH C:/usr/local/x86_64-w64-mingw32)
    set(PKG_CONFIG_EXECUTABLE pkg-config.exe)
    set(ENV{PKG_CONFIG_LIBDIR} C:\\usr\\local\\x86_64-w64-mingw32\\lib\\pkgconfig)
else ()
    set(CMAKE_C_COMPILER x86_64-w64-mingw32-gcc)
    set(CMAKE_CXX_COMPILER x86_64-w64-mingw32-g++-posix)
    set(CMAKE_RC_COMPILER x86_64-w64-mingw32-windres)
    set(CMAKE_FIND_ROOT_PATH /usr/x86_64-w64-mingw32;/usr/local/x86_64-w64-mingw32)
    set(ENV{PKG_CONFIG_LIBDIR}
    "/usr/x86_64-w64-mingw32/lib/pkgconfig:/usr/local/x86_64-w64-mingw32/lib/pkgconfig:/usr/lib/x86_64-w64-mingw32/pkgconfig")
endif ()
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
