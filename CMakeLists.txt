cmake_minimum_required(VERSION 3.16)

project(IO_QML VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)


add_subdirectory(td)
find_package(Qt6 6.5 REQUIRED COMPONENTS Quick ShaderTools)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appIO_QML
    main.cpp
)

qt_add_qml_module(appIO_QML
    URI IO_QML
    VERSION 1.0
    QML_FILES
        Main.qml
        SOURCES global_tg_value.h global_tg_value.cpp
        SOURCES tg_peson_qt.h tg_peson_qt.cpp
        SOURCES tg_controller_qt.h tg_controller_qt.cpp
        SOURCES tg_while_handler_qt.h tg_while_handler_qt.cpp
        QML_FILES
        SOURCES tg_chatslistmodel.h tg_chatslistmodel.cpp
        QML_FILES LogPage.qml
        QML_FILES Chats.qml
        RESOURCES moonpag.png
        RESOURCES sac.png
        RESOURCES nebula.jpg
        RESOURCES flower.png
)

qt6_add_shaders(appIO_QML "shaders"
    FILES
        mfrag.frag
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appIO_QML PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appIO_QML
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appIO_QML
    PRIVATE Qt6::Quick
    PRIVATE Td::TdStatic
    PRIVATE Qt6::ShaderTools
)

include(GNUInstallDirs)
install(TARGETS appIO_QML
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
