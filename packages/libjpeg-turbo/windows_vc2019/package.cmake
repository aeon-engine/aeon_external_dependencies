# Copyright (c) 2012-2019 Robin Degen

include (CopyToRuntimePath)

if (NOT TARGET JPEG::JPEGTURBO)
    add_library(JPEG::JPEGTURBO SHARED IMPORTED)
    set_target_properties(JPEG::JPEGTURBO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")

    set_property(TARGET JPEG::JPEGTURBO APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
    set_target_properties(JPEG::JPEGTURBO PROPERTIES IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/bin/turbojpeg.dll")
    set_target_properties(JPEG::JPEGTURBO PROPERTIES IMPORTED_IMPLIB_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/turbojpeg.lib")

    set_property(TARGET JPEG::JPEGTURBO APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
    set_target_properties(JPEG::JPEGTURBO PROPERTIES IMPORTED_LOCATION_DEBUG "${CMAKE_CURRENT_LIST_DIR}/bin/turbojpegd.dll")
    set_target_properties(JPEG::JPEGTURBO PROPERTIES IMPORTED_IMPLIB_DEBUG "${CMAKE_CURRENT_LIST_DIR}/lib/turbojpegd.lib")

    target_compile_definitions(JPEG::JPEGTURBO
        INTERFACE
            GTEST_LINKED_AS_SHARED_LIBRARY=1
    )

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/turbojpeg.dll" CONFIGURATIONS Release)
    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/turbojpegd.dll" CONFIGURATIONS Debug)
endif ()
