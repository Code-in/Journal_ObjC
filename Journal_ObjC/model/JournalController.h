//
//  JournalController.h
//  Journal_ObjC
//
//  Created by Pete Parks on 5/4/20.
//  Copyright © 2020 Pete Parks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface JournalController : NSObject

// MARK: Init
- (instancetype)initWithTitle:(NSString *)title date:(NSDate *)date description:(NSString *) description;

// MARK: Entry - CRUD
// MARK: Create
- (void)create:(NSString *)title text:(NSString *)text;

// MARK: Remove
- (void) remove:(Entry *)entry;

// MARK: Update
- (void) update:(Entry *)entry title:(NSString *)title  text:(NSString *)text;

@end

NS_ASSUME_NONNULL_END
