
# in QtCreator on the Build Settings / Project page
# set "Build Direcotry" to ...../FileStoreInternal/build

TEMPLATE = subdirs

CONFIG += ordered

SUBDIRS = \
    ./SubLibrary/Sublibrary.pro \
    ./SubLibraryTest/SubLibraryTest.pro
