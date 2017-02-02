//
//  AbstractFactoryPattern.h
//  DesignPatternObjc
//
//  Created by Beomseok Seo on 2/1/17.
//  Copyright © 2017 Beomseok Seo. All rights reserved.
//

#import <Foundation/Foundation.h>


// Twitter DarkMode
// Twitter WhiteModel

@protocol ColorTheme <NSObject>
- (void)defaultTextColor;
- (void)mainTitleColor;
- (void)subTitleColor;
@end

// 기존 앱 컬러 테마
@interface MainColorTheme : NSObject<ColorTheme>

@end

// 리뉴얼하는 앱의 컬러 테마
@interface RenewalMainColorTheme: NSObject<ColorTheme>

@end

@protocol ColorThemeFactory <NSObject>

- (id<ColorTheme>)getMainColorTheme;

@end

@interface DefaultColorFactory : NSObject<ColorThemeFactory>

@end

@interface RenewalColorFactory : NSObject<ColorThemeFactory>

@end
