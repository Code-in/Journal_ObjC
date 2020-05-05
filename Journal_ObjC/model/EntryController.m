//
//  EntryController.m
//  Journal_ObjC
//
//  Created by Pete Parks on 5/4/20.
//  Copyright © 2020 Pete Parks. All rights reserved.
//

#import "EntryController.h"



static NSString * const EntryKey = @"entries";

@interface EntryController ()

@property (nonatomic, strong) NSMutableArray *internalEntries;

@end

@implementation EntryController

+ (instancetype) shared {
    static EntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[EntryController alloc] init];
        [shared loadFromPersistentStorage];
    });
    return shared;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalEntries = [NSMutableArray array];
    }
    return self;
}

- (NSArray *)entries { return _internalEntries; }

- (void) createEntry:(Entry *) entry {
    //NSLog(@"Create: %@", entry);
    [_internalEntries addObject:entry];
    //NSLog(@"_entries %@", _internalEntries.count);
    //[self saveToPersistentStorage];
}

- (void) deleteEntry:(Entry *) entry {
    NSInteger index = [self.internalEntries indexOfObject: entry];
    if(index){
        [self.internalEntries removeObjectAtIndex: index];
    }
    //[self saveToPersistentStorage];
}


- (void)saveToPersistentStorage
{
    NSMutableArray *entryDictionaries = [NSMutableArray new];
    NSLog(@"Were in saveToPersistentStorage");
    for (Entry *entry in self.entries) {
        NSLog(@"saveToPersistentStorage: Name: %@, Text: %@, Date: %@", entry.title, entry.text, entry.date);
        [entryDictionaries addObject:entry.dictionaryRepresentation];
        NSLog(@"saveToPersistentStorage:  entryDictionaries: %@", entryDictionaries);
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:entryDictionaries forKey:EntryKey];
}

- (void)loadFromPersistentStorage
{
    NSArray *entryDictionaries = [[NSUserDefaults standardUserDefaults] objectForKey: EntryKey];
    for (NSDictionary *dictionary in entryDictionaries) {
        Entry *entry = [[Entry alloc] initWithDictionary:dictionary];
        NSLog(@"loadFromPersistentStorage: Name: %@, Text: %@, Date: %@", entry.title, entry.text, entry.date);
        [self createEntry:entry];
    }
}

@end
