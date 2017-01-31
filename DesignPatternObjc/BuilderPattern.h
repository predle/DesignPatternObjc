//
//  BuilderPattern.h
//  Demo
//
//  Created by Beomseok Seo on 1/31/17.
//  Copyright © 2017 Beomseok Seo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FactoryPattern.h"

@interface UserBuilder : NSObject
- (NSString *)getName;
- (UserBuilder *)setIsAdmin:(BOOL)isAdmin;
- (BOOL)getIsAdmin;
- (id)initWithName: (NSString *)name;
- (id<User>) build;
@end
