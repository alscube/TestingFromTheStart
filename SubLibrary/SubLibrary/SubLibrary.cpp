
// SubLibrary.cpp

#include "SubLibrary.h"

SubLibrary::SubLibrary()
{
}

int SubLibrary::SubtractByTen( int valueIn )
{
    valueIn -= 10;
    return valueIn;
}

int SubLibrary::SubtractByOneHundred( int valueIn )
{
    valueIn -= 100;
    return valueIn;
}
