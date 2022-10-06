
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
}

macx {
    DESTDIR = .
    CONFIG -= app_bundle
    LIBS += ../AddLibrary/libAddLibrary.a
    TARGET_NAME = $$TARGET
}

linux {
}

QMAKE_POST_LINK = $$DESTDIR/$$TARGET_NAME
