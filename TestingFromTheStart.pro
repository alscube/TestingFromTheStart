
# in QtCreator on the Build Settings / Project page
# set "Build Direcotry" to ...../FileStoreInternal/build

TEMPLATE = subdirs

CONFIG += ordered

SUBDIRS = \
    ./AddLibrary/AddLibrary.pro \
    ./SubLibrary/SubLibrary.pro \
    ./MainProject/MainProject.pro
