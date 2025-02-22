file(REMOVE_RECURSE
  "IO_QML/Main.qml"
  "IO_QML/TgChats.qml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/appIO_QML_tooling.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
