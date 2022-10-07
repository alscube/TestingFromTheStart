
// SubLibrary_global.h
//
// Copyright (C) 2022 Al's Cube
// see www.alscube.com


#pragma once

#include <QtCore/qglobal.h>

#if defined(SUBLIBRARY_LIBRARY)
#  define SUBLIBRARY_EXPORT Q_DECL_EXPORT
#else
#  define SUBLIBRARY_EXPORT Q_DECL_IMPORT
#endif


