
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
#    QMAKE_LFLAGS += "-Wl,-rpath,/Users/user/Workspace/Projects/AlsCube/TestingFromTheStart/build/SubLibrary/SubLibrary"
    TARGET_NAME = $$OUT_PWD/$$TARGET
}

linux {
}

QMAKE_POST_LINK = $$TARGET_NAME

#LIBS_DIR == $$clean_path( $$OUT_PWD/../SubLibrary )
#message( LIBS_DIR: $$LIBS_DIR )
