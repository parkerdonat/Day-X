//
//  Entry.h
//  DayX
//
//  Created by Parker Donat on 5/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Entry : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSDate * timestamp;
@property (nonatomic, retain) NSString * bodyText;

@end
