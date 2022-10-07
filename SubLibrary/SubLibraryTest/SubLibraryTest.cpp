
// SubLibraryTest.cpp
//
// Copyright (C) 2022 Al's Cube
// see www.alscube.com

#include "SubLibraryTest.h"

#include "../SubLibrary/SubLibrary.h"


SubLibraryTest::SubLibraryTest()
{

}


void SubLibraryTest::SubTenTest( )
{
    SubLibrary SubLibrary;
    int value( SubLibrary.SubtractByTen( 50 ) );
    QCOMPARE( value, 40 );
}


void SubLibraryTest::SubOneHundredTest( )
{
    SubLibrary SubLibrary;
    int value( SubLibrary.SubtractByOneHundred(300) );
    QCOMPARE( value, 200 );
}



