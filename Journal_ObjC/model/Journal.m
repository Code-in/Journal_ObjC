//
//  Journal.m
//  Journal_ObjC
//
//  Created by Pete Parks on 5/4/20.
//  Copyright © 2020 Pete Parks. All rights reserved.
//

#import "Journal.h"

@implementation Journal


- (instancetype)initWithTitle:(nonnull NSString *)title text:(nonnull NSString *) text {
    self = [super init];
    if (self) {
        _date = [NSDate date];
        _title = title;
        _text = text;
        
        //_entries = [[Entry alloc]initWithTitle:title date: [NSDate date] text: text];
    }
    return self;
}





@end
