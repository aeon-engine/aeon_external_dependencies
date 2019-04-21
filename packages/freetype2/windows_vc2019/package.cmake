# Copyright (c) 2012-2019 Robin Degen

include (CopyToRuntimePath)

if (NOT TARGET Freetype::Freetype)
    add_library(Freetype::Freetype SHARED IMPORTED)
    set_target_properties(Freetype::Freetype PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include/freetype2")

    set_property(TARGET Freetype::Freetype APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
    set_target_properties(Freetype::Freetype PROPERTIES IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/bin/freetype.dll")
    set_target_properties(Freetype::Freetype PROPERTIES IMPORTED_IMPLIB_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/freetype.lib")

    set_property(TARGET Freetype::Freetype APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
    set_target_properties(Freetype::Freetype PROPERTIES IMPORTED_LOCATION_DEBUG "${CMAKE_CURRENT_LIST_DIR}/bin/freetyped.dll")
    set_target_properties(Freetype::Freetype PROPERTIES IMPORTED_IMPLIB_DEBUG "${CMAKE_CURRENT_LIST_DIR}/lib/freetyped.lib")

    set_target_properties(Freetype::Freetype PROPERTIES INTERFACE_LINK_LIBRARIES PNG::PNG)

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/freetype.dll" CONFIGURATIONS Release)
    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/freetyped.dll" CONFIGURATIONS Debug)
endif ()
