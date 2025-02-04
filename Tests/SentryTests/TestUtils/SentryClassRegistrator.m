#import "SentryClassRegistrator.h"
#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@implementation SentryClassRegistrator

+ (void)registerClass:(NSString *)name
{
    Class c = objc_allocateClassPair(
        [NSObject class], [name cStringUsingEncoding:NSUTF8StringEncoding], 0);
    objc_registerClassPair(c);
}

@end
