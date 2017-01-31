//
//  Demo.m
//  Demo
//
//  Created by Beomseok Seo on 1/31/17.
//  Copyright © 2017 Beomseok Seo. All rights reserved.
//

#import "Demo.h"

@implementation Demo

- (id)init {
    self = [super init];
    if (self) {
        auto NSString *username = @"This is username";
        self.username = username;
        
        a = 10;
    }
    return self;
}

- (NSString * _Nullable)isEqualUsername:(NSString * _Nonnull)username {
    if (self.username == nil) {
        return nil;
    }
    
    if ([self.username isEqualToString:username]) {
        return self.username;
    }
    return nil;
}

@end
