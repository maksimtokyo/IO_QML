#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Td::tdjson" for configuration "RelWithDebInfo"
set_property(TARGET Td::tdjson APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Td::tdjson PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/libtdjson.1.8.42.dylib"
  IMPORTED_SONAME_RELWITHDEBINFO "@rpath/libtdjson.1.8.42.dylib"
  )

list(APPEND _cmake_import_check_targets Td::tdjson )
list(APPEND _cmake_import_check_files_for_Td::tdjson "${_IMPORT_PREFIX}/lib/libtdjson.1.8.42.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
