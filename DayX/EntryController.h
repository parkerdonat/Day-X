//
//  EntryController.h
//  DayX
//
//  Created by Parker Donat on 5/15/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

@property (strong, nonatomic, readonly) NSArray *entries;

+ (EntryController *)sharedInstance;

- (Entry *)createEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText;

//- (void)addEntry:(Entry *)entry;
- (void)removeEntry:(Entry *)entry;

//- (void)save;

- (void)saveToPersistentStorage;

@end
