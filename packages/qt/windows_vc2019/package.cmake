# Copyright (c) 2012-2019 Robin Degen

set(QTDIR ${CMAKE_CURRENT_LIST_DIR})
set(CMAKE_PREFIX_PATH "${QTDIR};${CMAKE_PREFIX_PATH}")

find_package(Qt5Core)
find_package(Qt5Widgets)
