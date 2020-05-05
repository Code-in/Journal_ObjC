//
//  Entry.m
//  Journal_ObjC
//
//  Created by Pete Parks on 5/4/20.
//  Copyright © 2020 Pete Parks. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "Entry.h"

static NSString * const dateKey = @"dateKey";
static NSString * const titleKey = @"titleKey";
static NSString * const textKey = @"textKey";

@implementation Entry


- (instancetype)initWithTitle:(NSString *)title
                         text:(NSString *)text {
    self = [super init];
    if(self) {
        _title = title;
        _text = text;
        _date = [NSDate date];
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    NSString *title = dictionary[titleKey];
    NSString *text = dictionary[textKey];
    //NSDate *date = dictionary[dateKey];
    return [self initWithTitle:title text:text];
}

- (NSDictionary *)dictionaryRepresentation
{
    return @{titleKey: _title,
             textKey: _text,
             dateKey: _date};
}

- (BOOL)isEqual:(id)object
{
    if (![object isKindOfClass:[Entry class]]) { return NO; }
    // Shortcut to comparing all properties one by one. We let NSDictionary do it for us
    return [[self dictionaryRepresentation] isEqualToDictionary:[(Entry *)object dictionaryRepresentation]];
}


@end
