//
//  Entry.h
//  Journal_ObjC
//
//  Created by Pete Parks on 5/4/20.
//  Copyright © 2020 Pete Parks. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSDate *date;


- (instancetype) initWithTitle:(NSString *)title
                         text:(NSString *) text;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)dictionaryRepresentation;

@end

NS_ASSUME_NONNULL_END
