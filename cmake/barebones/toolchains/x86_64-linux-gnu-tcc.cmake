set(BB_TRIPLET x86_64-linux-gnu)
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR x86_64)
set(CMAKE_C_COMPILER x86_64-linux-gnu-tcc)
set(CMAKE_C_FLAGS $ENV{CFLAGS} -Wunsupported)
set(CMAKE_FIND_ROOT_PATH /usr/local/x86_64-linux-gnu)
set(ENV{PKG_CONFIG_PATH}
    "/usr/x86_64-linux-gnu/lib/pkgconfig:/usr/local/x86_64-linux-gnu/lib/pkgconfig:/usr/local/x86_64-linux-gnu/share/pkgconfig:/usr/lib/x86_64-linux-gnu/pkgconfig")
set(ENV{PKG_CONFIG_LIBDIR}
    "/usr/x86_64-linux-gnu/lib/pkgconfig:/usr/local/x86_64-linux-gnu/lib/pkgconfig:/usr/local/x86_64-linux-gnu/share/pkgconfig:/usr/lib/x86_64-linux-gnu/pkgconfig")
set(CMAKE_TRY_COMPILE_TARGET_TYPE EXECUTABLE)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
