cmake_minimum_required(VERSION 3.10)
project(SQLite LANGUAGES C)

option(SQLITE_BUILD_STATIC "Build SQLite static library" ON)
option(SQLITE_BUILD_SHARED "Build SQLite shared library" ON)

set(SOURCE_FILES sqlite3.c shell.c)

if (SQLITE_BUILD_STATIC)
    add_library(sqlite3_static STATIC sqlite3.c)
endif()

if (SQLITE_BUILD_SHARED)
    add_library(sqlite3 SHARED sqlite3.c)
endif()


add_executable(sqlite_shell shell.c)


if (SQLITE_BUILD_SHARED)
    target_link_libraries(sqlite_shell sqlite3)
elseif (SQLITE_BUILD_STATIC)
    target_link_libraries(sqlite_shell sqlite3_static)
else()
    message(FATAL_ERROR "either static or dynamic option should be selected")
endif()


add_definitions(-DSQLITE_THREADSAFE=1)


set_target_properties(sqlite3 PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib
)
set_target_properties(sqlite_shell PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin
)

