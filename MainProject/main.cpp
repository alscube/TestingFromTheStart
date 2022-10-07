
// main.cpp

#include <QCoreApplication>

#include "AddLibrary.h"
#include "SubLibrary.h"

int main( int, char** )
{
	AddLibrary add;
	printf( "MainProject add %d\n", add.AddByTen(40) );

	SubLibrary sub;
	printf( "MainProject sub %d\n", sub.SubtractByOneHundred(900) );
}
