include (CopyToRuntimePath)

if (NOT TARGET JPEG::JPEGTURBO)
    add_library(JPEG::JPEGTURBO SHARED IMPORTED)
    set_target_properties(JPEG::JPEGTURBO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")
    set_target_properties(JPEG::JPEGTURBO PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/lib/libturbojpeg.so")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/lib/libturbojpeg.so")
endif ()
