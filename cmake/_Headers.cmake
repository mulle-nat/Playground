# cmake/_Headers.cmake is generated by `mulle-sde`. Edits will be lost.
#
if( MULLE_TRACE_INCLUDE)
   MESSAGE( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

set( INCLUDE_DIRS
src
src/protocols
) 

set( PRIVATE_HEADERS
src/NSMethodSignature-Private.h
src/import-private.h
src/include-private.h
)

set( PUBLIC_HEADERS
src/MulleObjCAllocation.h
src/MulleObjCFunctions.h
src/MulleObjCLoader.h
src/MulleObjC.h
src/NSAutoreleasePool.h
src/NSDebug.h
src/NSInvocation.h
src/NSLock.h
src/NSMethodSignature.h
src/NSObject+NSCodingSupport.h
src/NSObject.h
src/NSProxy.h
src/NSRecursiveLock.h
src/NSThread.h
src/import.h
src/include.h
src/_ns_autoreleasepointerarray.h
src/ns_byteorder.h
src/ns_debug.h
src/_ns_exception.h
src/ns_exception.h
src/ns_fastclassids.h
src/ns_fastmethodids.h
src/ns_int_type.h
src/ns_objc_compatibility.h
src/ns_objc_compiler.h
src/ns_objc.h
src/ns_objc_include.h
src/ns_objc_setup.h
src/ns_objc_startup.inc
src/ns_objc_type.h
src/ns_range.h
src/ns_rootconfiguration.h
src/ns_test_allocation.h
src/ns_threadconfiguration.h
src/ns_zone.h
src/protocols/MulleObjCClassCluster.h
src/protocols/MulleObjCException.h
src/protocols/MulleObjCRuntimeObject.h
src/protocols/MulleObjCSingleton.h
src/protocols/MulleObjCTaggedPointer.h
src/protocols/NSCoding.h
src/protocols/NSCopying.h
src/protocols/NSFastEnumeration.h
src/protocols/NSLocking.h
src/protocols/NSObjectProtocol.h
) 

