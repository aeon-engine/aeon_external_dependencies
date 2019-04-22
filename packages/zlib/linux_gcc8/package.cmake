include (CopyToRuntimePath)

if (NOT TARGET ZLIB::ZLIB)
    add_library(ZLIB::ZLIB SHARED IMPORTED)
    set_target_properties(ZLIB::ZLIB PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")
    set_target_properties(ZLIB::ZLIB PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/lib/libz.so")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/lib/libz.so")
endif ()
