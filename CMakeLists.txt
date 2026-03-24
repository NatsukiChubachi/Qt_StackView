cmake_minimum_required(VERSION 3.16)

project(Qt_StackView VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appQt_StackView
    main.cpp
)

qt_add_qml_module(appQt_StackView
    URI Qt_StackView
    VERSION 1.0
    QML_FILES main.qml
    QML_FILES screenA.qml
    QML_FILES screenB.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appQt_StackView PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appQt_StackView
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appQt_StackView
    PRIVATE Qt6::Quick)

include(GNUInstallDirs)
install(TARGETS appQt_StackView
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
