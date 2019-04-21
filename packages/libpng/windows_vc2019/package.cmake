# Copyright (c) 2012-2019 Robin Degen

include (CopyToRuntimePath)

if (NOT TARGET PNG::PNG)
    add_library(PNG::PNG SHARED IMPORTED)
    set_target_properties(PNG::PNG PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")

    set_property(TARGET PNG::PNG APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
    set_target_properties(PNG::PNG PROPERTIES IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/bin/libpng16.dll")
    set_target_properties(PNG::PNG PROPERTIES IMPORTED_IMPLIB_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/libpng16.lib")

    set_property(TARGET PNG::PNG APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
    set_target_properties(PNG::PNG PROPERTIES IMPORTED_LOCATION_DEBUG "${CMAKE_CURRENT_LIST_DIR}/bin/libpng16d.dll")
    set_target_properties(PNG::PNG PROPERTIES IMPORTED_IMPLIB_DEBUG "${CMAKE_CURRENT_LIST_DIR}/lib/libpng16d.lib")

    set_target_properties(PNG::PNG PROPERTIES IMPORTED_LINK_INTERFACE_LIBRARIES ZLIB::ZLIB)

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/libpng16.dll" CONFIGURATIONS Release)
    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/libpng16d.dll" CONFIGURATIONS Debug)
endif ()
