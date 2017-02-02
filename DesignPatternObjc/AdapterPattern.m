//
//  AdapterPattern.m
//  DesignPatternObjc
//
//  Created by Beomseok Seo on 2/1/17.
//  Copyright © 2017 Beomseok Seo. All rights reserved.
//

#import "AdapterPattern.h"

@implementation Book
- (id)initWithFormat: (BookFormat)format {
    if(self = [super init]) {
        self.format = format;
    }
    return self;
}
@end

@implementation Library

- (Book *)getBook {
    BookFormat format = BookFormatAsPDF;
    return [[Book alloc] initWithFormat:format];
}

@end

@implementation MDLibraryAdapter

- (Book *)getBookFormatAsPDF {
    Book *b = [self getBook];
    return b;
}

- (Book *)getBookFormatAsEpub {
    Book *b = [self getBook];
    return [self convertFormat:b format:BookFormatAsEPub];
}

- (Book *)getBookFormatAsMobi {
    Book *b = [self getBook];
    return [self convertFormat:b format:BookFormatAsMobi];
}

- (Book *)convertFormat:(Book *)b format:(BookFormat)f {
    return [[Book alloc] initWithFormat:f];
}

@end
