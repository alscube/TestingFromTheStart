
#pragma once

#include <QTest>


class SubLibraryTest : public QObject
{
    Q_OBJECT

public:
    SubLibraryTest();

private Q_SLOTS:
    // QTest default methods
//    initTestCase() will be called before the first test function is executed.
//    initTestCase_data() will be called to create a global test data table.
//    cleanupTestCase() will be called after the last test function was executed.
//    init() will be called before each test function is executed.
//    cleanup() will be called after every test function.

    void SubTenTest( );
    void SubOneHundredTest( );
};


