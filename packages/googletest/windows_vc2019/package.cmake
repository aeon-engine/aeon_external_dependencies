# Copyright (c) 2012-2019 Robin Degen

include (CopyToRuntimePath)

if (NOT TARGET GTest::GTest)
    add_library(GTest::GTest SHARED IMPORTED)
    set_target_properties(GTest::GTest PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")

    set_property(TARGET GTest::GTest APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
    set_target_properties(GTest::GTest PROPERTIES IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/bin/gtest.dll")
    set_target_properties(GTest::GTest PROPERTIES IMPORTED_IMPLIB_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/gtest.lib")

    set_property(TARGET GTest::GTest APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
    set_target_properties(GTest::GTest PROPERTIES IMPORTED_LOCATION_DEBUG "${CMAKE_CURRENT_LIST_DIR}/bin/gtestd.dll")
    set_target_properties(GTest::GTest PROPERTIES IMPORTED_IMPLIB_DEBUG "${CMAKE_CURRENT_LIST_DIR}/lib/gtestd.lib")

    target_compile_definitions(GTest::GTest
        INTERFACE
            GTEST_LINKED_AS_SHARED_LIBRARY=1
    )

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/gtest.dll" CONFIGURATIONS Release)
    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/gtestd.dll" CONFIGURATIONS Debug)
endif ()

if (NOT TARGET GTest::Main)
    add_library(GTest::Main SHARED IMPORTED)
    set_target_properties(GTest::Main PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")

    set_property(TARGET GTest::Main APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
    set_target_properties(GTest::Main PROPERTIES IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/bin/gtest_main.dll")
    set_target_properties(GTest::Main PROPERTIES IMPORTED_IMPLIB_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/gtest_main.lib")

    set_property(TARGET GTest::Main APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
    set_target_properties(GTest::Main PROPERTIES IMPORTED_LOCATION_DEBUG "${CMAKE_CURRENT_LIST_DIR}/bin/gtest_maind.dll")
    set_target_properties(GTest::Main PROPERTIES IMPORTED_IMPLIB_DEBUG "${CMAKE_CURRENT_LIST_DIR}/lib/gtest_maind.lib")

    set_target_properties(GTest::Main PROPERTIES INTERFACE_LINK_LIBRARIES GTest::GTest)

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/gtest_main.dll" CONFIGURATIONS Release)
    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/gtest_maind.dll" CONFIGURATIONS Debug)
endif ()

if (NOT TARGET GTest::GMock)
    add_library(GTest::GMock SHARED IMPORTED)
    set_target_properties(GTest::GMock PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")

    set_property(TARGET GTest::GMock APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
    set_target_properties(GTest::GMock PROPERTIES IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/bin/gmock.dll")
    set_target_properties(GTest::GMock PROPERTIES IMPORTED_IMPLIB_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/gmock.lib")

    set_property(TARGET GTest::GMock APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
    set_target_properties(GTest::GMock PROPERTIES IMPORTED_LOCATION_DEBUG "${CMAKE_CURRENT_LIST_DIR}/bin/gmockd.dll")
    set_target_properties(GTest::GMock PROPERTIES IMPORTED_IMPLIB_DEBUG "${CMAKE_CURRENT_LIST_DIR}/lib/gmockd.lib")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/gmock.dll" CONFIGURATIONS Release)
    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/gmockd.dll" CONFIGURATIONS Debug)
endif ()

if (NOT TARGET GTest::GmockMain)
    add_library(GTest::GmockMain SHARED IMPORTED)
    set_property(TARGET GTest::GmockMain APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
    set_target_properties(GTest::GmockMain PROPERTIES IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/bin/gmock_main.dll")
    set_target_properties(GTest::GmockMain PROPERTIES IMPORTED_IMPLIB_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/gmock_main.lib")

    set_property(TARGET GTest::GmockMain APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
    set_target_properties(GTest::GmockMain PROPERTIES IMPORTED_LOCATION_DEBUG "${CMAKE_CURRENT_LIST_DIR}/bin/gmock_maind.dll")
    set_target_properties(GTest::GmockMain PROPERTIES IMPORTED_IMPLIB_DEBUG "${CMAKE_CURRENT_LIST_DIR}/lib/gmock_maind.lib")

    set_target_properties(GTest::GmockMain PROPERTIES INTERFACE_LINK_LIBRARIES GTest::GMock)

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/gmock_main.dll" CONFIGURATIONS Release)
    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/bin/gmock_maind.dll" CONFIGURATIONS Debug)
endif ()
