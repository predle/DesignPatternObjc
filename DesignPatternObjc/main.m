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
#import "AbstractFactoryPattern.h"
#import "AdapterPattern.h"

int a;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Demo *demo = [[Demo alloc] init];
        NSLog(@"Username %@, %d", demo.username,a);

        // Factory Pattern
        id<User> a1 = [UserFactory getUserWithType:@"admin" name:@"Beomseok"];
        id<User> c1 = [UserFactory getUserWithType:@"counselor" name:@"Wondae"];
        
        NSLog(@"a1 %@, %d", a1.getName, a1.getIsAdmin);
        NSLog(@"c1 %@, %d", c1.getName, c1.getIsAdmin);
        
        id<User> p1 = [[[MDUser UserBuilderWithName:@"Beomseok Seo"] setIsAdmin: true] build];
        NSLog(@"p1 %@, %d", p1.getName, p1.getIsAdmin);

        /// AbstractFactoryPattern
        // 팩토리만 바꾸면, 컬러 테마를 변경 할 수 있다.
        id<ColorThemeFactory> defaultColorFactory = [[DefaultColorFactory alloc] init];
        [[defaultColorFactory getMainColorTheme] defaultTextColor];
        
        id<ColorThemeFactory> renewalColorFactory = [[RenewalColorFactory alloc] init];
        [[renewalColorFactory getMainColorTheme] defaultTextColor];
        
        // AdapterPattern
        id<LibraryAdapter> adapter = [[MDLibraryAdapter alloc] init];
        Book *pdfBook = [adapter getBookFormatAsPDF];
        NSLog(@"PDF format %@", pdfBook.format == BookFormatAsPDF ? @"is PDF":@"is Not PDF");
     
        Book *ePubBook = [adapter convertFormat:pdfBook format:BookFormatAsEPub];
        NSLog(@"ePub format %@", ePubBook.format == BookFormatAsEPub ? @"is ePub":@"is Not ePub");
    }
    
    return 0;
}
