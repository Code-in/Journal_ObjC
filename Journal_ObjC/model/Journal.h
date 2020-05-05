//
//  Journal.h
//  Journal_ObjC
//
//  Created by Pete Parks on 5/4/20.
//  Copyright © 2020 Pete Parks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface Journal : NSObject

@property (nonatomic, readwrite) NSString *title;
@property (nonatomic, readwrite) NSDate *date;
@property (nonatomic, readwrite) NSString *text;
@property (nonatomic, readwrite) Entry *entries;

// MARK: Entry - CRUD

// MARK: Create
//func create(title: String, entryText: String) {

// MARK: Remove
//func remove(entry: Entry) {

//func update(entry: Entry, title: String, entryText: String) {




@end

NS_ASSUME_NONNULL_END
