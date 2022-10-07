
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
    BLD_CONFIG = debug

    CONFIG(release, debug|release) {
      BLD_CONFIG = release
    }

    # copy DLL into test folder
    COPY_LIB = $$quote( $$OUT_PWD/../SubLibrary/$$BLD_CONFIG/SubLibrary.dll $$OUT_PWD/$$BLD_CONFIG/SubLibrary.dll )
    COPY_LIB ~= s,/,\\,g
    QMAKE_PRE_LINK = $$QMAKE_COPY $$COPY_LIB

    LIB_PATH = $$clean_path($$OUT_PWD/../SubLibrary/$$BLD_CONFIG)
    LIBS += $$LIB_PATH/SubLibrary.lib
    TARGET_NAME = $$OUT_PWD/$$BLD_CONFIG/$$TARGET
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

