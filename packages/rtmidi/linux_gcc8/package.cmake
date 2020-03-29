# Copyright (c) 2012-2019 Robin Degen

if (NOT TARGET RTMidi::RTMidi)
    add_library(RTMidi::RTMidi STATIC IMPORTED)
    set_target_properties(RTMidi::RTMidi PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")
    set_target_properties(RTMidi::RTMidi PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/lib/librtmidi.so")

    copy_files_to_runtime_path(FILES "${CMAKE_CURRENT_LIST_DIR}/lib/librtmidi.so.5")
endif ()
