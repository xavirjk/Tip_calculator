#ifndef TIPLIB_GLOBAL_H
#define TIPLIB_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(TIPLIB_LIBRARY)
#  define TIPLIB_EXPORT Q_DECL_EXPORT
#else
#  define TIPLIB_EXPORT Q_DECL_IMPORT
#endif

#endif // TIPLIB_GLOBAL_H
