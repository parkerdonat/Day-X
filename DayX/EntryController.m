//
//  EntryController.m
//  DayX
//
//  Created by Parker Donat on 5/15/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "EntryController.h"

@interface EntryController ()

@property (strong, nonatomic) NSArray *entries;

@end

@implementation EntryController


+ (EntryController *)sharedInstance {
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[EntryController alloc] init];
        
        sharedInstance.entries = [NSArray new];
    });
    return sharedInstance;
}

- (Entry *)createEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText {
    Entry *entry = [Entry new];
    entry.title = title;
    entry.bodyText = bodyText;
    entry.timeStamp = [NSDate new];
    
    [self addEntry:entry];
    
    return entry;
}

// Implement the addEntry method: it needs to create a mutable version of the controller's entries array, add the entry that's passed in, and then re-set the controller's Entries array.
- (void)addEntry:(Entry *)entry{
    if (!entry) {
        return;
    }
    
    NSMutableArray *mutableEntries = self.entries.mutableCopy;
    [mutableEntries addObject:entry];
    
    self.entries = mutableEntries;
}

- (void)removeEntry:(Entry *)entry{
    if (!entry) {
        return;
    }
    
    NSMutableArray *mutableEntries = self.entries.mutableCopy;
    [mutableEntries addObject:entry];
    
    self.entries = mutableEntries;
}

@end
