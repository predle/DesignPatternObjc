//
//  main.m
//  Demo
//
//  Created by Beomseok Seo on 1/31/17.
//  Copyright © 2017 Beomseok Seo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Demo.h"
#import "FactoryPattern.h"
#import "BuilderPattern.h"

int a;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Demo *demo = [[Demo alloc] init];
        NSLog(@"Username %@, %d", demo.username,a);

        id<User> a1 = [UserFactory getUserWithType:@"admin" name:@"Beomseok"];
        id<User> c1 = [UserFactory getUserWithType:@"counselor" name:@"Wondae"];
        
        NSLog(@"a1 %@, %d", a1.getName, a1.getIsAdmin);
        NSLog(@"c1 %@, %d", c1.getName, c1.getIsAdmin);
        
        id<User> p1 = [[[MDUser UserBuilderWithName:@"서범석"] setIsAdmin: true] build];
        NSLog(@"p1 %@, %d", p1.getName, p1.getIsAdmin);

    }
    return 0;
}
