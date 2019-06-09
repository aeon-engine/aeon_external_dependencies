# Copyright (c) 2012-2019 Robin Degen

if (NOT TARGET Box2D::Box2D)
    add_library(Box2D::Box2D STATIC IMPORTED)
    set_target_properties(Box2D::Box2D PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")

    set_property(TARGET Box2D::Box2D APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
    set_target_properties(Box2D::Box2D PROPERTIES IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/Box2D.lib")

    set_property(TARGET Box2D::Box2D APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
    set_target_properties(Box2D::Box2D PROPERTIES IMPORTED_LOCATION_DEBUG "${CMAKE_CURRENT_LIST_DIR}/lib/Box2Dd.lib")
endif ()
