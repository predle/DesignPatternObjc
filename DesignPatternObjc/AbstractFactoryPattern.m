//
//  AbstractFactoryPattern.m
//  DesignPatternObjc
//
//  Created by Beomseok Seo on 2/1/17.
//  Copyright © 2017 Beomseok Seo. All rights reserved.
//

#import "AbstractFactoryPattern.h"

@implementation MainColorTheme

- (void)defaultTextColor {
    NSLog(@"MainColorTheme - Default Text Color");
}

- (void)mainTitleColor {
    NSLog(@"MainColorTheme - Main Title Color");
}

- (void)subTitleColor {
    NSLog(@"MainColorTheme - Sub Title Color");
}

@end

//

@implementation RenewalMainColorTheme

- (void)defaultTextColor {
    NSLog(@"RenewalMainColorTheme - Default Text Color");
}

- (void)mainTitleColor {
    NSLog(@"RenewalMainColorTheme - Main Title Color");
}

- (void)subTitleColor {
    NSLog(@"RenewalMainColorTheme - Sub Title Color");
}

@end

//

@implementation DefaultColorFactory

- (id<ColorTheme>)getMainColorTheme {
    return [[MainColorTheme alloc] init];
}

@end

@implementation RenewalColorFactory

- (id<ColorTheme>)getMainColorTheme {
    return [[RenewalMainColorTheme alloc] init];
}

@end

//

