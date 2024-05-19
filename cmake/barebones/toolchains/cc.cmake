set(CMAKE_C_COMPILER cc)
set(CMAKE_CXX_COMPILER c++)
set(CMAKE_FIND_ROOT_PATH
    /usr
    /usr/local
)
set(ENV{PKG_CONFIG_PATH}
    "/usr/lib/pkgconfig:/usr/lib64/pkgconfig:/usr/local/lib/pkgconfig:/usr/local/share/pkgconfig")
set(ENV{PKG_CONFIG_LIBDIR}
    "/usr/lib/pkgconfig:/usr/lib64/pkgconfig:/usr/local/lib/pkgconfig:/usr/local/share/pkgconfig")
