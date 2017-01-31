//
//  Demo.h
//  Demo
//
//  Created by Beomseok Seo on 1/31/17.
//  Copyright © 2017 Beomseok Seo. All rights reserved.
//

#import <Foundation/Foundation.h>
extern int a; // 외부변수
@interface Demo : NSObject
@property (nonatomic, strong) NSString * _Nonnull username;
- (NSString * _Nullable)isEqualUsername:(NSString * _Nonnull)username;
@end
