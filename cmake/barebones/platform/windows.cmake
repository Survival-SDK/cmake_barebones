if (${CMAKE_SYSTEM_NAME} STREQUAL Windows)
    find_package(CompilerRuntime REQUIRED)
    if (DEFINED CMAKE_CXX_COMPILER_LOADED)
        find_package(CxxLibrary REQUIRED)
        find_package(WinPthread REQUIRED)
    endif()
endif()

function(bb_target_misc_windows _TARGET)
    if (${CMAKE_SYSTEM_NAME} STREQUAL Windows)
        target_link_libraries(${_TARGET} PRIVATE ${COMPILER_RUNTIME_LIBRARIES})
        if (DEFINED CMAKE_CXX_COMPILER_LOADED)
            target_link_libraries(${_TARGET} PRIVATE
                ${CXX_LIBRARY_LIBRARIES}
                ${WINPTHREAD_LIBRARIES}
            )
        endif()
    endif()
endfunction()
