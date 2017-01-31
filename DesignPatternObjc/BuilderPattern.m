//
//  BuilderPattern.m
//  Demo
//
//  Created by Beomseok Seo on 1/31/17.
//  Copyright © 2017 Beomseok Seo. All rights reserved.
//

#import "BuilderPattern.h"
#import "FactoryPattern.h"

@interface UserBuilder()
@property (nonatomic, strong) NSString *_name;
@property (nonatomic, assign) BOOL _isAdmin;
@end

@implementation UserBuilder

- (id)initWithName: (NSString *)name {
    if (self = [super init]) {
        self._name = name;
    }
    return self;
}

+ (id)UserBuilderWithName: (NSString *)name {
    return [[UserBuilder alloc] initWithName:name];
}

- (id<User>)build {
    if (self._isAdmin == true) {
        return [[MDAdmin alloc] initWithUserBuilder: self];
    }
    return [[MDUser alloc] initWithUserBuilder: self];
}

- (UserBuilder *)setIsAdmin:(BOOL)isAdmin {
    self._isAdmin = isAdmin;
    return self;
}

- (NSString *)getName {
    return self._name;
}

- (BOOL)getIsAdmin {
    return self._isAdmin;
}

@end
