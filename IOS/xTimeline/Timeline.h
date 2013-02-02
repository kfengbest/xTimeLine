//
//  Timeline.h
//  xTimeline
//
//  Created by fengka on 2/2/13.
//  Copyright (c) 2013 adsk. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Snapshot;

@interface Timeline : NSObject
{
    
}

@property(strong,nonatomic) NSMutableArray* snapshots;

-(void) addSnapshot:(Snapshot*) obj;
-(void) removeSnapshot:(Snapshot*) obj;

@end
