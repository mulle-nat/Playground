//
//  ns_int_type.h
//  MulleObjC
//
//  Created by Nat! on 29.03.17.
//  Copyright © 2017 Mulle kybernetiK. All rights reserved.
//

// This should be includeable by C and not require linkage with MulleObjC

#ifndef MulleObjCUniverse__h__
#define MulleObjCUniverse__h__

#include "include.h"

MULLE_C_CONST_NON_NULL_RETURN
static inline struct _mulle_objc_universe  *MulleObjCGetUniverse( void)
{
   return( mulle_objc_global_inlineget_universe( __MULLE_OBJC_UNIVERSEID__));
}


MULLE_C_CONST_NON_NULL_RETURN
static inline struct _mulle_objc_universe  *MulleObjCObjectGetUniverse( id self)
{
   if( ! self)
      return( mulle_objc_global_inlineget_universe( __MULLE_OBJC_UNIVERSEID__));

   return( mulle_objc_object_get_universe( self));
}

#endif