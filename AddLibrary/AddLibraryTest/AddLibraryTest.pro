
TARGET = AddLibraryTest

CONFIG += c++14
CONFIG += console
CONFIG += testcase

QT -= gui
QT += testlib


INCLUDEPATH = ../AddLibrary

HEADERS += \
    AddLibraryTest.h

SOURCES += \
    AddLibraryTest.cpp \
    AddLibraryTestMain.cpp


win32 {
    BLD_CONFIG = debug

    CONFIG(release, debug|release) {
      BLD_CONFIG = release
    }

    LIBS += ../AddLibrary/$$BLD_CONFIG/AddLibrary.lib
    TARGET_NAME = $$OUT_PWD/$$BLD_CONFIG/$$TARGET
}

macx {
    CONFIG -= app_bundle
    LIBS += ../AddLibrary/libAddLibrary.a
    TARGET_NAME = $$OUT_PWD/$$TARGET
}

linux {
    LIBS += ../AddLibrary/libAddLibrary.a
    TARGET_NAME = $$OUT_PWD/$$TARGET
}

QMAKE_POST_LINK = $$TARGET_NAME
