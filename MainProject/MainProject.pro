
TARGET = MainProject

QT -= gui

CONFIG += c++14
CONFIG += console


INCLUDEPATH += \
    ../AddLibrary/AddLibrary \
    ../SubLibrary/SubLibrary \

SOURCES += \
        main.cpp


win32 {
    BLD_CONFIG = debug

    CONFIG(release, debug|release) {
      BLD_CONFIG = release
    }

    # copy DLL to Main Project folder
    COPY_LIB = $$quote( $$OUT_PWD/../SubLibrary/SubLibrary/$$BLD_CONFIG/SubLibrary.dll $$OUT_PWD/$$BLD_CONFIG/SubLibrary.dll )
    COPY_LIB ~= s,/,\\,g
    QMAKE_PRE_LINK = $$QMAKE_COPY $$COPY_LIB

    LIBS += \
        $$OUT_PWD/../AddLibrary/AddLibrary/$$BLD_CONFIG/AddLibrary.lib \
        $$OUT_PWD/../SubLibrary/SubLibrary/$$BLD_CONFIG/SubLibrary.lib

    TARGET_NAME = $$OUT_PWD/$$BLD_CONFIG/$${TARGET}.exe
}


macx {
    CONFIG -= app_bundle
    LIBS += \
        $$OUT_PWD/../AddLibrary/AddLibrary/libAddLibrary.a \
        $$OUT_PWD/../SubLibrary/SubLibrary/libSubLibrary.dylib

    DYNAMIC_PATH = $$clean_path($$OUT_PWD/../SubLibrary/SubLibrary)
    QMAKE_LFLAGS += "-Wl,-rpath,$$DYNAMIC_PATH"

    TARGET_NAME = $$OUT_PWD/$$TARGET
}


linux {
    LIBS += \
        $$OUT_PWD/../AddLibrary/AddLibrary/libAddLibrary.a \
        $$OUT_PWD/../SubLibrary/SubLibrary/libSubLibrary.so

    DYNAMIC_PATH = $$clean_path($$OUT_PWD/../SubLibrary/SubLibrary)
    QMAKE_LFLAGS += "-Wl,-rpath,$$DYNAMIC_PATH"

    TARGET_NAME = $$OUT_PWD/$$TARGET
}

QMAKE_POST_LINK = $$TARGET_NAME
