include (CopyToRuntimePath)

if (NOT TARGET GTest::GTest)
    add_library(GTest::GTest STATIC IMPORTED)
    set_target_properties(GTest::GTest PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")
    set_target_properties(GTest::GTest PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/lib/libgtest.so")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/lib/libgtest.so")
endif ()

if (NOT TARGET GTest::Main)
    add_library(GTest::Main STATIC IMPORTED)
    set_target_properties(GTest::Main PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")
    set_target_properties(GTest::Main PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/lib/libgtest_main.so")

    set_target_properties(GTest::Main PROPERTIES INTERFACE_LINK_LIBRARIES GTest::GTest)

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/lib/libgtest_main.so")
endif ()

if (NOT TARGET GTest::GMock)
    add_library(GTest::GMock STATIC IMPORTED)
    set_target_properties(GTest::GMock PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")
    set_target_properties(GTest::GMock PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/lib/libgmock.so")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/lib/libgmock.so")
endif ()

if (NOT TARGET GTest::GmockMain)
    add_library(GTest::GmockMain STATIC IMPORTED)

    set_target_properties(GTest::GmockMain PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")
    set_target_properties(GTest::GmockMain PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/lib/libgmock_main.so")

    set_target_properties(GTest::GmockMain PROPERTIES INTERFACE_LINK_LIBRARIES GTest::GMock)

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/lib/libgmock_main.so")
endif ()
