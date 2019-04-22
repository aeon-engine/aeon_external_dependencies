include (CopyToRuntimePath)

if (NOT TARGET PNG::PNG)
    add_library(PNG::PNG SHARED IMPORTED)
    set_target_properties(PNG::PNG PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")
    set_target_properties(PNG::PNG PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/lib/libpng.so")

    set_target_properties(PNG::PNG PROPERTIES IMPORTED_LINK_INTERFACE_LIBRARIES ZLIB::ZLIB)

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/lib/libpng.so")
endif ()
