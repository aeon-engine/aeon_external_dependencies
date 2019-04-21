# Copyright (c) 2012-2019 Robin Degen

if (NOT TARGET GoogleBenchmark::GoogleBenchmark)
    add_library(GoogleBenchmark::GoogleBenchmark STATIC IMPORTED)
    set_target_properties(GoogleBenchmark::GoogleBenchmark PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")

    set_property(TARGET GoogleBenchmark::GoogleBenchmark APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
    set_target_properties(GoogleBenchmark::GoogleBenchmark PROPERTIES IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/benchmark.lib")

    set_property(TARGET GoogleBenchmark::GoogleBenchmark APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
    set_target_properties(GoogleBenchmark::GoogleBenchmark PROPERTIES IMPORTED_LOCATION_DEBUG "${CMAKE_CURRENT_LIST_DIR}/lib/benchmarkd.lib")

    set_target_properties(GoogleBenchmark::GoogleBenchmark PROPERTIES INTERFACE_LINK_LIBRARIES shlwapi.lib)
endif ()

if (NOT TARGET GoogleBenchmark::Main)
    add_library(GoogleBenchmark::Main STATIC IMPORTED)
    set_target_properties(GoogleBenchmark::Main PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")

    set_property(TARGET GoogleBenchmark::Main APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
    set_target_properties(GoogleBenchmark::Main PROPERTIES IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/benchmark_main.lib")

    set_property(TARGET GoogleBenchmark::Main APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
    set_target_properties(GoogleBenchmark::Main PROPERTIES IMPORTED_LOCATION_DEBUG "${CMAKE_CURRENT_LIST_DIR}/lib/benchmark_maind.lib")

    set_target_properties(GoogleBenchmark::Main PROPERTIES INTERFACE_LINK_LIBRARIES GoogleBenchmark::GoogleBenchmark)
endif ()
