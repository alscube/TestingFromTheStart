
TARGET = MainProject

QT -= gui

CONFIG += c++14
CONFIG += console

INCLUDEPATH += \
    ../AddLibrary/AddLibrary \
    ../SubLibrary/SubLibrary \

SOURCES += \
        main.cpp

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
