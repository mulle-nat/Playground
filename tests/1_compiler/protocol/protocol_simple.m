#include <mulle_objc_runtime/mulle_objc_runtime.h>

@protocol  Baz
- (void) baz;
@end

@protocol  Bar
- (void) bar;
@end


@interface Foo <Baz>
@end


@implementation Foo

+ (id) new
{
   return( mulle_objc_infraclass_alloc_instance( self, NULL));
}


- (void) baz
{
}

@end


main()
{
   Foo     *foo;
   Class   cls;

   foo = [Foo new];
   cls =  mulle_objc_object_get_infraclass( foo);
   printf( "Baz: %s\n",
       _mulle_objc_infraclass_conformsto_protocolid( cls,
                                              @protocol( Baz)) ? "YES" : "NO");
   printf( "Bar: %s\n",
       _mulle_objc_infraclass_conformsto_protocolid( cls,
                                              @protocol( Bar)) ? "YES" : "NO");
}
