
// SubLibrary.cpp

#include "SubLibrary.h"
//
// Copyright (C) 2022 Al's Cube
// see www.alscube.com

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
