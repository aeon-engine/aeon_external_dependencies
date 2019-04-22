# Copyright (c) 2012-2019 Robin Degen

include (CopyToRuntimePath)

if (NOT TARGET ICU::data)
    add_library(ICU::data SHARED IMPORTED GLOBAL)
    set_target_properties(ICU::data PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")
    set_target_properties(ICU::data PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/lib/libicudata.so")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/lib/libicudata.so")
    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/lib/libicudata.so.64")

    # https://cmake.org/cmake/help/v3.13/module/FindICU.html
    # "on Windows data is named dt and i18n is named in;"
    add_library(ICU::dt ALIAS ICU::data)
endif ()

if (NOT TARGET ICU::i18n)
    add_library(ICU::i18n SHARED IMPORTED GLOBAL)
    set_target_properties(ICU::i18n PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")
    set_target_properties(ICU::i18n PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/lib/libicui18n.so")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/lib/libicui18n.so")

    # https://cmake.org/cmake/help/v3.13/module/FindICU.html
    # "on Windows data is named dt and i18n is named in;"
    add_library(ICU::in ALIAS ICU::i18n)
endif ()

if (NOT TARGET ICU::io)
    add_library(ICU::io SHARED IMPORTED GLOBAL)
    set_target_properties(ICU::io PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")
    set_target_properties(ICU::io PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/lib/libicuio.so")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/lib/libicuio.so")
endif ()

if (NOT TARGET ICU::test)
    add_library(ICU::test SHARED IMPORTED GLOBAL)
    set_target_properties(ICU::test PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")
    set_target_properties(ICU::test PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/lib/libicutest.so")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/lib/libicutest.so")
endif ()

if (NOT TARGET ICU::tu)
    add_library(ICU::tu SHARED IMPORTED GLOBAL)
    set_target_properties(ICU::tu PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")
    set_target_properties(ICU::tu PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/lib/libicutu.so")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/lib/libicutu.so")
endif ()

if (NOT TARGET ICU::uc)
    add_library(ICU::uc SHARED IMPORTED GLOBAL)
    set_target_properties(ICU::uc PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")
    set_target_properties(ICU::uc PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/lib/libicuuc.so")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/lib/libicuuc.so")
endif ()
