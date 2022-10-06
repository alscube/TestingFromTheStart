
// AddLibraryTest.h

#include "AddLibraryTest.h"

#include "AddLibrary.h"


AddLibraryTest::AddLibraryTest()
{
}

void AddLibraryTest::AddTenTest( )
{
    AddLibrary addLibrary;
    int value( addLibrary.AddByTen( 50 ) );
    QCOMPARE( value, 60 );
}

void AddLibraryTest::AddOneHundredTest( )
{
    AddLibrary addLibrary;
    int value( addLibrary.AddByOneHundred(300) );
    QCOMPARE( value, 400 );
}



