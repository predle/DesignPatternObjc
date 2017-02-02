//
//  AdapterPattern.h
//  DesignPatternObjc
//
//  Created by Beomseok Seo on 2/1/17.
//  Copyright © 2017 Beomseok Seo. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, BookFormat) {
    BookFormatAsPDF,
    BookFormatAsEPub,
    BookFormatAsMobi
};

@interface Book : NSObject
@property (nonatomic, assign) BookFormat format;
@end

@interface Library : NSObject
- (Book *)getBook;
@end

@protocol LibraryAdapter <NSObject>

- (Book *)getBookFormatAsPDF;
- (Book *)getBookFormatAsEpub;
- (Book *)getBookFormatAsMobi;

- (Book *)convertFormat:(Book *)b format:(BookFormat)f;

@end

@interface MDLibraryAdapter : Library <LibraryAdapter>

@end
