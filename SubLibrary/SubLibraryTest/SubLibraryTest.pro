
TARGET = SubLibraryTest

CONFIG += c++14
CONFIG += console
CONFIG += testcase

QT -= gui
QT += testlib


HEADERS += \
    SubLibraryTest.h

SOURCES += \
    SubLibraryTest.cpp \
    main.cpp


win32 {
}

macx {
    CONFIG -= app_bundle
    LIB_PATH = $$clean_path($$OUT_PWD/../SubLibrary)
    LIBS += $$LIB_PATH/libSubLibrary.dylib
    QMAKE_LFLAGS += "-Wl,-rpath,$$LIB_PATH"
    TARGET_NAME = $$OUT_PWD/$$TARGET
}

linux {
    LIB_PATH = $$clean_path($$OUT_PWD/../SubLibrary)
    LIBS += $$LIB_PATH/libSubLibrary.so
    QMAKE_LFLAGS += "-Wl,-rpath,$$LIB_PATH"
    TARGET_NAME = $$OUT_PWD/$$TARGET
}

QMAKE_POST_LINK = $$TARGET_NAME

