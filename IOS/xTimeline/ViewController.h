//
//  ViewController.h
//  xTimeline
//
//  Created by fengka on 1/24/13.
//  Copyright (c) 2013 adsk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIImagePickerController.h>


@interface ViewController : UIViewController<UINavigationControllerDelegate,UIImagePickerControllerDelegate>
{
    UIScrollView* mainScrollView;
}

@property(nonatomic, strong) UIScrollView* mainScrollView;

- (IBAction)onTakePhoto:(id)sender;

@end
