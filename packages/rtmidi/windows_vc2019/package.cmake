# Copyright (c) 2012-2019 Robin Degen

if (NOT TARGET RTMidi::RTMidi)
    add_library(RTMidi::RTMidi STATIC IMPORTED)
    set_target_properties(RTMidi::RTMidi PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")

    set_property(TARGET RTMidi::RTMidi APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
    set_target_properties(RTMidi::RTMidi PROPERTIES IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/rtmidi.lib")

    set_property(TARGET RTMidi::RTMidi APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
    set_target_properties(RTMidi::RTMidi PROPERTIES IMPORTED_LOCATION_DEBUG "${CMAKE_CURRENT_LIST_DIR}/lib/rtmidid.lib")
endif ()
