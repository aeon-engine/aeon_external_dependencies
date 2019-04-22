include (CopyToRuntimePath)

if (NOT TARGET Asio::Asio)
    add_library(Asio::Asio INTERFACE IMPORTED)
    set_target_properties(Asio::Asio PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")

    target_compile_definitions(Asio::Asio INTERFACE
        ASIO_NO_DEPRECATED
        ASIO_STANDALONE
        ASIO_HEADER_ONLY
    )
endif ()
