# cmake/_Sources.cmake is generated by `mulle-sde`. Edits will be lost.
#
if( MULLE_TRACE_INCLUDE)
   MESSAGE( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

set( SOURCES
src/MulleObjCAllocation.m
src/MulleObjCFunctions.m
src/MulleObjCLoader.m
src/MulleObjCStandalone.m
src/MulleObjCStartup.m
src/NSAutoreleasePool.m
src/NSDebug.m
src/NSInvocation.m
src/NSLock.m
src/NSMethodSignature.m
src/NSObject+NSCodingSupport.m
src/NSObject.m
src/NSProxy.m
src/NSRecursiveLock.m
src/NSThread.m
src/ns_breakpoint.c
src/ns_debug.m
src/ns_exception.m
src/ns_objc_setup.m
src/ns_range.m
src/ns_rootconfiguration.m
src/ns_test_allocation.m
src/protocols/MulleObjCClassCluster.m
src/protocols/MulleObjCException.m
src/protocols/MulleObjCSingleton.m
src/protocols/MulleObjCTaggedPointer.m
src/protocols/NSCoding.m
src/protocols/NSCopying.m
)

set( STANDALONE_SOURCES
src/MulleObjC-standalone.m
)