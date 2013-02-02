//
//  Timeline.m
//  xTimeline
//
//  Created by fengka on 2/2/13.
//  Copyright (c) 2013 adsk. All rights reserved.
//

#import "Timeline.h"

@implementation Timeline
@synthesize snapshots;

- (id)init
{
    self = [super init];
    if (self) {
        self.snapshots = [[NSMutableArray alloc]init];
    }
    
    return self;
}

-(void) addSnapshot:(Snapshot*) obj
{
    [self.snapshots addObject:obj];
}

-(void) removeSnapshot:(Snapshot*) obj
{
    [self.snapshots removeObject:obj];
}

@end
