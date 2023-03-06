option(BB_MORE_WARNINGS "More compiler warnings" OFF)
option(BB_WERROR "Compile with -Werror option" OFF)

if(NOT DEFINED CMAKE_BUILD_TYPE AND NOT DEFINED CMAKE_CONFIGURATION_TYPES)
    message(STATUS
        "Setting build type to 'Release' as none was specified."
    )
    set(CMAKE_BUILD_TYPE "Release" CACHE
        STRING "Choose the type of build." FORCE)
    set_property(CACHE CMAKE_BUILD_TYPE
        PROPERTY STRINGS "Debug" "Release" "Lint"
    )
endif()
