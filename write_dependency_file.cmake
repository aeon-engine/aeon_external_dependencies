# Copyright (c) 2012-2019 Robin Degen

cmake_minimum_required(VERSION 3.14)

if (NOT CMAKE_ARGV3)
    message(FATAL_ERROR "First argument must point to a valid downloaded dependency.")
endif ()

if (NOT CMAKE_ARGV4)
    message(FATAL_ERROR "Second argument must point to where dependencies.txt must be written to")
endif ()

message(STATUS "Aeon Dependency file writer")
message(STATUS "Dependency:  ${CMAKE_ARGV3}")
message(STATUS "Output file: ${CMAKE_ARGV4}")

file(TO_CMAKE_PATH ${CMAKE_ARGV3} __DEPENDENCY_PATH)
get_filename_component(__DEPENDENCY_NAME_VERSION ${__DEPENDENCY_PATH} NAME)
string(REPLACE "_" ";" __DEPENDENCY_COMPONENTS ${__DEPENDENCY_NAME_VERSION})

list(GET __DEPENDENCY_COMPONENTS 0 __DEPENDENCY_NAME)
list(GET __DEPENDENCY_COMPONENTS 1 __DEPENDENCY_VERSION)

message(STATUS "Name:        ${__DEPENDENCY_NAME}")
message(STATUS "Version:     ${__DEPENDENCY_VERSION}")

file(APPEND "${CMAKE_ARGV4}" "bintray ${__DEPENDENCY_NAME} ${__DEPENDENCY_VERSION}\n")
