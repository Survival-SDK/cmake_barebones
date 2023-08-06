set(BB_TRIPLET i686-w64-mingw32)
set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR i686)
if (${CMAKE_HOST_SYSTEM_NAME} STREQUAL Windows)
    set(CMAKE_C_COMPILER i686-w64-mingw32-gcc)
    set(CMAKE_CXX_COMPILER i686-w64-mingw32-g++)
    set(CMAKE_RC_COMPILER i686-w64-mingw32-windres)
    set(CMAKE_MAKE_PROGRAM gnumake.exe CACHE FILEPATH "" FORCE)
    set(CMAKE_FIND_ROOT_PATH C:/usr/local/i686-w64-mingw32)
    set(PKG_CONFIG_EXECUTABLE pkg-config.exe)
    set(ENV{PKG_CONFIG_PATH}
        "C:\\usr\\local\\i686-w64-mingw32\\lib\\pkgconfig;C:\\usr\\local\\i686-w64-mingw32\\share\\pkgconfig")
    set(ENV{PKG_CONFIG_LIBDIR}
        "C:\\usr\\local\\i686-w64-mingw32\\lib\\pkgconfig;C:\\usr\\local\\i686-w64-mingw32\\share\\pkgconfig")
else ()
    set(CMAKE_C_COMPILER i686-w64-mingw32-gcc)
    set(CMAKE_CXX_COMPILER i686-w64-mingw32-g++-posix)
    set(CMAKE_RC_COMPILER i686-w64-mingw32-windres)
    set(CMAKE_FIND_ROOT_PATH /usr/i686-w64-mingw32;/usr/local/i686-w64-mingw32)
    set(ENV{PKG_CONFIG_PATH}
        "/usr/i686-w64-mingw32/lib/pkgconfig:/usr/local/i686-w64-mingw32/lib/pkgconfig:/usr/local/i686-w64-mingw32/share/pkgconfig:/usr/lib/i686-w64-mingw32/pkgconfig")
    set(ENV{PKG_CONFIG_LIBDIR}
        "/usr/i686-w64-mingw32/lib/pkgconfig:/usr/local/i686-w64-mingw32/lib/pkgconfig:/usr/local/i686-w64-mingw32/share/pkgconfig:/usr/lib/i686-w64-mingw32/pkgconfig")
endif ()
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
