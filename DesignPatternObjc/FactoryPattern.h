//
//  AbstractFactoryPattern.h
//  Demo
//
//  Created by Beomseok Seo on 1/31/17.
//  Copyright © 2017 Beomseok Seo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UserBuilder;

@protocol User
- (NSString *)getName;
- (BOOL)getIsAdmin;
@end

@interface MDUser : NSObject<User>
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) BOOL isAdmin;
- (id)initWithUserBuilder: (UserBuilder *)userBuilder;
+ (UserBuilder *) UserBuilderWithName:(NSString *)name;
- (BOOL)getIsAdmin;
@end

@interface MDAdmin: MDUser<User>
@end

@interface MDCounselor : MDUser<User>
@end

@interface UserFactory : NSObject
+ (id<User>)getUserWithType:(NSString *)type name:(NSString *)name;
@end
