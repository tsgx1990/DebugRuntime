//
//  Person.m
//  PersonTest
//
//  Created by guanglong on 2019/5/6.
//  Copyright © 2019 guanglong. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>

@interface NSObject (___)

@end

@implementation NSObject (___)

//+ (BOOL)resolveInstanceMethod:(SEL)sel
//{
//    static int i = 0;
//    NSLog(@"a: %d", ++i);
//    return NO;
//}

@end

@implementation Person

+ (BOOL)resolveClassMethod:(SEL)sel
{
    static int i = 0;
    NSLog(@"b: %d", ++i);
    return YES;
}

+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    return YES;
}

@end
