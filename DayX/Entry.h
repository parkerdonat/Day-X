//
//  Entry.h
//  DayX
//
//  Created by Parker Donat on 5/15/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *bodyText;
@property (strong, nonatomic) NSDate *timeStamp;

@end
