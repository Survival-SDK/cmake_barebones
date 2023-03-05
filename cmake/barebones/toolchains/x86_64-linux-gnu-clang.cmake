set(BB_TRIPLET x86_64-linux-gnu)
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR x86_64)
set(CMAKE_C_COMPILER clang)
set(CMAKE_C_FLAGS $ENV{CFLAGS} --target=x86_64-pc-linux-gnu)
set(ENV{PKG_CONFIG_LIBDIR}
    ${MAKE_FIND_ROOT_PATH}/lib/pkgconfig/:/usr/lib/pkgconfig
)
set(CMAKE_TRY_COMPILE_TARGET_TYPE EXECUTABLE)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
