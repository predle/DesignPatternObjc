//
//  AbstractFactoryPattern.m
//  Demo
//
//  Created by Beomseok Seo on 1/31/17.
//  Copyright © 2017 Beomseok Seo. All rights reserved.
//

#import "FactoryPattern.h"
#import "BuilderPattern.h"

@implementation MDUser

- (id)init {
    if (self = [super init]) {
        self.name = @"Model S";
    }
    return self;
}

- (id)initWithName:(NSString *)name{
    if (self = [super init]){
        self.name = name;
    }
    return self;
}

+ (UserBuilder *) UserBuilderWithName:(NSString *)name {
    UserBuilder *builder = [[UserBuilder alloc] initWithName:name];
    return builder;
}

- (id)initWithUserBuilder: (UserBuilder *)userBuilder {
    if (self = [super init]) {
        self.name = userBuilder.getName;
        self.isAdmin = userBuilder.getIsAdmin;
    }
    return self;
}

- (NSString *)getName {
    return self.name;
}

- (BOOL)getIsAdmin {
    return false;
}

@end

@implementation MDAdmin

- (BOOL)getIsAdmin {
    return true;
}

@end

@implementation MDCounselor

- (BOOL)getIsAdmin {
    return false;
}

@end

@implementation UserFactory
+ (id<User> _Nullable)getUserWithType:(NSString *)type
                                 name:(NSString *)name {
    if ([type isEqualToString:@"counselor"]) {
        id<User> user = [[MDCounselor alloc] initWithName:name];
        return user;
    }
    if ([type isEqualToString:@"admin"]) {
        id<User> user = [[MDAdmin alloc] initWithName:name];
        return user;
    }
    return nil;
}
@end
