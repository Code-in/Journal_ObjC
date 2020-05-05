//
//  JournalController.m
//  Journal_ObjC
//
//  Created by Pete Parks on 5/4/20.
//  Copyright © 2020 Pete Parks. All rights reserved.
//

#import "JournalController.h"

@implementation JournalController

// MARK: Entry - CRUD
// MARK: Create
- (void)add:(NSString *)title text:(NSString *)text {
    
}

+ (instancetype) shared {
    static JournalController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [JournalController alloc];
    });
    return shared;
}

// MARK: Remove
- (void) remove:(Entry *)entry {
    
}

// MARK: Update
- (void) update:(Entry *)entry title:(NSString *)title  text:(NSString *)text {
    
}

@end
