
# creates a Dynamic library

TARGET = SubLibrary
TEMPLATE = lib

CONFIG += c++14

QT -= gui

DEFINES += SUBLIBRARY_LIBRARY

SOURCES += \
    SubLibrary.cpp

HEADERS += \
    SubLibrary_global.h \
    SubLibrary.h

CONFIG += unversioned_libname
POST_LINK_STEP=install_name_tool -id @rpath/libSubLibrary.dylib $$OUT_PWD/libSubLibrary.dylib
QMAKE_POST_LINK=$$quote($$POST_LINK_STEP)

