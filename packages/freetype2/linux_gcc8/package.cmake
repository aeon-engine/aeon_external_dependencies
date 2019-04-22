# Copyright (c) 2012-2019 Robin Degen

include (CopyToRuntimePath)

if (NOT TARGET Freetype::Freetype)
    add_library(Freetype::Freetype STATIC IMPORTED)
    set_target_properties(Freetype::Freetype PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include/freetype2")
    set_target_properties(Freetype::Freetype PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/lib/libfreetype.a")
    set_target_properties(Freetype::Freetype PROPERTIES INTERFACE_LINK_LIBRARIES PNG::PNG)
endif ()
