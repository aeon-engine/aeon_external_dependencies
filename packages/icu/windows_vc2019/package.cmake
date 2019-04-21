# Copyright (c) 2012-2019 Robin Degen

include (CopyToRuntimePath)

if (NOT TARGET ICU::data)
    add_library(ICU::data SHARED IMPORTED GLOBAL)
    set_target_properties(ICU::data PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")

    set_target_properties(ICU::data PROPERTIES IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/bin/icudt63.dll")
    set_target_properties(ICU::data PROPERTIES IMPORTED_IMPLIB_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/icudt.lib")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/icudt63.dll")

    # https://cmake.org/cmake/help/v3.13/module/FindICU.html
    # "on Windows data is named dt and i18n is named in;"
    add_library(ICU::dt ALIAS ICU::data)
endif ()

if (NOT TARGET ICU::i18n)
    add_library(ICU::i18n SHARED IMPORTED GLOBAL)
    set_target_properties(ICU::i18n PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")

    set_property(TARGET ICU::i18n APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
    set_target_properties(ICU::i18n PROPERTIES IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/bin/icuin63.dll")
    set_target_properties(ICU::i18n PROPERTIES IMPORTED_IMPLIB_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/icuin.lib")

    set_property(TARGET ICU::i18n APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
    set_target_properties(ICU::i18n PROPERTIES IMPORTED_LOCATION_DEBUG "${CMAKE_CURRENT_LIST_DIR}/bin/icuin63d.dll")
    set_target_properties(ICU::i18n PROPERTIES IMPORTED_IMPLIB_DEBUG "${CMAKE_CURRENT_LIST_DIR}/lib/icuind.lib")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/icuin63.dll" CONFIGURATIONS Release)
    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/icuin63d.dll" CONFIGURATIONS Debug)

    # https://cmake.org/cmake/help/v3.13/module/FindICU.html
    # "on Windows data is named dt and i18n is named in;"
    add_library(ICU::in ALIAS ICU::i18n)
endif ()

if (NOT TARGET ICU::io)
    add_library(ICU::io SHARED IMPORTED GLOBAL)
    set_target_properties(ICU::io PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")

    set_property(TARGET ICU::io APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
    set_target_properties(ICU::io PROPERTIES IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/bin/icuio63.dll")
    set_target_properties(ICU::io PROPERTIES IMPORTED_IMPLIB_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/icuio.lib")

    set_property(TARGET ICU::io APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
    set_target_properties(ICU::io PROPERTIES IMPORTED_LOCATION_DEBUG "${CMAKE_CURRENT_LIST_DIR}/bin/icuio63d.dll")
    set_target_properties(ICU::io PROPERTIES IMPORTED_IMPLIB_DEBUG "${CMAKE_CURRENT_LIST_DIR}/lib/icuiod.lib")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/icuio63.dll" CONFIGURATIONS Release)
    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/icuio63d.dll" CONFIGURATIONS Debug)
endif ()

if (NOT TARGET ICU::test)
    add_library(ICU::test SHARED IMPORTED GLOBAL)
    set_target_properties(ICU::test PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")

    set_property(TARGET ICU::test APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
    set_target_properties(ICU::test PROPERTIES IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/bin/icutest63.dll")
    set_target_properties(ICU::test PROPERTIES IMPORTED_IMPLIB_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/icutest.lib")

    set_property(TARGET ICU::test APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
    set_target_properties(ICU::test PROPERTIES IMPORTED_LOCATION_DEBUG "${CMAKE_CURRENT_LIST_DIR}/bin/icutest63d.dll")
    set_target_properties(ICU::test PROPERTIES IMPORTED_IMPLIB_DEBUG "${CMAKE_CURRENT_LIST_DIR}/lib/icutestd.lib")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/icutest63.dll" CONFIGURATIONS Release)
    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/icutest63d.dll" CONFIGURATIONS Debug)
endif ()

if (NOT TARGET ICU::tu)
    add_library(ICU::tu SHARED IMPORTED GLOBAL)
    set_target_properties(ICU::tu PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")

    set_property(TARGET ICU::tu APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
    set_target_properties(ICU::tu PROPERTIES IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/bin/icutu63.dll")
    set_target_properties(ICU::tu PROPERTIES IMPORTED_IMPLIB_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/icutu.lib")

    set_property(TARGET ICU::tu APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
    set_target_properties(ICU::tu PROPERTIES IMPORTED_LOCATION_DEBUG "${CMAKE_CURRENT_LIST_DIR}/bin/icutu63d.dll")
    set_target_properties(ICU::tu PROPERTIES IMPORTED_IMPLIB_DEBUG "${CMAKE_CURRENT_LIST_DIR}/lib/icutud.lib")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/icutu63.dll" CONFIGURATIONS Release)
    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/icutu63d.dll" CONFIGURATIONS Debug)
endif ()

if (NOT TARGET ICU::uc)
    add_library(ICU::uc SHARED IMPORTED GLOBAL)
    set_target_properties(ICU::uc PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")

    set_property(TARGET ICU::uc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
    set_target_properties(ICU::uc PROPERTIES IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/bin/icuuc63.dll")
    set_target_properties(ICU::uc PROPERTIES IMPORTED_IMPLIB_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/icuuc.lib")

    set_property(TARGET ICU::uc APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
    set_target_properties(ICU::uc PROPERTIES IMPORTED_LOCATION_DEBUG "${CMAKE_CURRENT_LIST_DIR}/bin/icuuc63d.dll")
    set_target_properties(ICU::uc PROPERTIES IMPORTED_IMPLIB_DEBUG "${CMAKE_CURRENT_LIST_DIR}/lib/icuucd.lib")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/icuuc63.dll" CONFIGURATIONS Release)
    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/icuuc63d.dll" CONFIGURATIONS Debug)
endif ()
