
#include <SubLibraryTest.h>


// TEST_MAIN
int main(int argc, char *argv[])
{
    qputenv("QT_FORCE_STDERR_LOGGING", "1");

    int status = 0;
    QTest::setMainSourcePath(__FILE__, QT_TESTCASE_BUILDDIR);

    {
        SubLibraryTest test;
        status |= QTest::qExec(&test, argc, argv);
    }

    return status;
}
