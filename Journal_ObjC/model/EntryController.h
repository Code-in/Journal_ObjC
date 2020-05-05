//
//  EntryController.h
//  Journal_ObjC
//
//  Created by Pete Parks on 5/4/20.
//  Copyright © 2020 Pete Parks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryController : NSObject

@property (nonatomic, strong, readonly) NSArray *entries;
//@property (nonatomic, readwrite) NSMutableArray *entries;  //

// Our shared instance, known as the source of truth
+ (EntryController *)shared;


// MARK: Entry - CRUD

// MARK: Create
-(void) createEntry:(Entry *) entry;

// MARK: Remove
-(void) deleteEntry:(Entry *) entry;

- (void)saveToPersistentStorage;


//func update(entry: Entry, title: String, entryText: String) {


@end

NS_ASSUME_NONNULL_END
