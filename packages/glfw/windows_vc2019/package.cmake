# Copyright (c) 2012-2019 Robin Degen

include (CopyToRuntimePath)

if (NOT TARGET GLFW::GLFW)
    add_library(GLFW::GLFW SHARED IMPORTED)
    set_target_properties(GLFW::GLFW PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")

    set_property(TARGET GLFW::GLFW APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
    set_target_properties(GLFW::GLFW PROPERTIES IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/bin/glfw3.dll")
    set_target_properties(GLFW::GLFW PROPERTIES IMPORTED_IMPLIB_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/glfw3dll.lib")

    set_property(TARGET GLFW::GLFW APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
    set_target_properties(GLFW::GLFW PROPERTIES IMPORTED_LOCATION_DEBUG "${CMAKE_CURRENT_LIST_DIR}/bin/glfw3d.dll")
    set_target_properties(GLFW::GLFW PROPERTIES IMPORTED_IMPLIB_DEBUG "${CMAKE_CURRENT_LIST_DIR}/lib/glfw3ddll.lib")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/glfw3.dll" CONFIGURATIONS Release)
    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/glfw3d.dll" CONFIGURATIONS Debug)
endif ()
