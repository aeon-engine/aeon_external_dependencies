include (CopyToRuntimePath)

if (NOT TARGET Clang::Clang)
    add_library(Clang::Clang SHARED IMPORTED)
    set_target_properties(Clang::Clang PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")

    set_target_properties(Clang::Clang PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/bin/libclang.dll")
    set_target_properties(Clang::Clang PROPERTIES IMPORTED_IMPLIB "${CMAKE_CURRENT_LIST_DIR}/lib/libclang.lib")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/libclang.dll")
endif ()
