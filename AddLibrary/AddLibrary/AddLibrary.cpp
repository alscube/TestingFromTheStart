
// AddLibrary.cpp
//
// Copyright (C) 2022 Al's Cube
// see www.alscube.com

#include "AddLibrary.h"

AddLibrary::AddLibrary()
{
}

int AddLibrary::AddByTen( int valueIn )
{
    valueIn += 10;
    return valueIn;
}

int AddLibrary::AddByOneHundred( int valueIn )
{
    valueIn += 100;
    return valueIn;
}
