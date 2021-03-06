//
//  ns_int_type.h
//  MulleObjC
//
//  Created by Nat! on 29.03.17.
//  Copyright © 2017 Mulle kybernetiK. All rights reserved.
//

// This should be includeable by C and not require linkage with MulleObjC

#ifndef MulleObjCIntegralType__h__
#define MulleObjCIntegralType__h__

#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>


#ifndef NSINTEGER_DEFINED

typedef uintptr_t   NSUInteger;
typedef intptr_t    NSInteger;

#define NSIntegerMax    ((NSInteger) (((NSUInteger) -1) >> 1))
#define NSIntegerMin    (-((NSInteger) (((NSUInteger) -1) >> 1)) - 1)
#define NSUIntegerMax   ((NSUInteger) -1)
#define NSUIntegerMin   (0)

#define NSINTEGER_DEFINED

#endif


typedef enum
{
   NSOrderedAscending = -1,
   NSOrderedSame       = 0,
   NSOrderedDescending = 1
} NSComparisonResult;


//
// having YES, NO as an enum messes up the boxed expressions @YES @NO
// but use @(YES) @(NO) and everything is fine
//
enum _MulleBool
{
   YES = 1,
   NO  = 0
};

//
// the hated BOOL. here it is an int
// on windows it unfortunately already exists in "minwindef.h" (when
// compiling with mingw)
// so don't typedef it
//
#if defined( _WIN32)
# ifndef _MINWINDEF_
//#  error "The #include <minwindef.h> is missing. Include <windows.h> somewhere."
# endif
#else
typedef enum _MulleBool   BOOL;
#endif


#endif /* ns_int_type_h */
