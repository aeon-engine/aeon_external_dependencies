# Copyright (c) 2012-2019 Robin Degen

include (CopyToRuntimePath)

if (NOT TARGET Asio::Asio)
    add_library(Asio::Asio INTERFACE IMPORTED)
    set_target_properties(Asio::Asio PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")
    
    target_compile_definitions(Asio::Asio INTERFACE
        ASIO_NO_DEPRECATED
        ASIO_STANDALONE
        ASIO_HEADER_ONLY
        # Workaround for VS2017 compiler bug: https://github.com/chriskohlhoff/asio/issues/290
        _SILENCE_CXX17_ALLOCATOR_VOID_DEPRECATION_WARNING
    )
endif ()
