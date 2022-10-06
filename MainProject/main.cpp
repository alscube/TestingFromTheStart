
// main.cpp

#include <QCoreApplication>

#include "AddLibrary.h"
#include "SubLibrary.h"

int main( int, char** )
{
    AddLibrary add;
    qDebug() << "MainProject add" << add.AddByTen( 40) ;

    SubLibrary sub;
    qDebug() << "MainProject sub" << sub.SubtractByOneHundred( 900 );
}
