//
//  Snapshot.h
//  xTimeline
//
//  Created by fengka on 2/2/13.
//  Copyright (c) 2013 adsk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Snapshot : NSObject
{
    
}

@property(strong, nonatomic) UIImage*   image;
@property(strong, nonatomic) NSString*  description;
@property(strong, nonatomic) NSDate*    date;

@end
