
// AddLibraryTestMain.cpp
//
// Copyright (C) 2022 Al's Cube
// see www.alscube.com

#include <AddLibraryTest.h>


// TEST_MAIN
int main(int argc, char *argv[])
{
    qputenv("QT_FORCE_STDERR_LOGGING", "1");

    int status = 0;
    QTest::setMainSourcePath(__FILE__, QT_TESTCASE_BUILDDIR);

    {
        AddLibraryTest test;
        status |= QTest::qExec(&test, argc, argv);
    }

    return status;
}
