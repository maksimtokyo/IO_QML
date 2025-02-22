file(REMOVE_RECURSE
  "IO_QML/Chats.qml"
  "IO_QML/LogPage.qml"
  "IO_QML/Main.qml"
  "IO_QML/flower.png"
  "IO_QML/moonpag.png"
  "IO_QML/nebula.jpg"
  "IO_QML/sac.png"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/appIO_QML_tooling.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
