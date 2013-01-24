//
//  ViewController.m
//  xTimeline
//
//  Created by fengka on 1/24/13.
//  Copyright (c) 2013 adsk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize mainScrollView;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    mainScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    [self.view addSubview:mainScrollView];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTakePhoto:(id)sender {
    
    bool bSupported = [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera];
    
    if (!bSupported) {
        return;
    }
    
    UIImagePickerController* cameraPicker = [[UIImagePickerController alloc] init];
    
    cameraPicker.delegate = self;
    cameraPicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    [self presentViewController:cameraPicker animated:YES completion:nil];
}


- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
//    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];//
    //self.imageView.image = image;
    [picker dismissViewControllerAnimated:YES completion:nil];
    
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo NS_DEPRECATED_IOS(2_0, 3_0)
{
//    self.imageView.image = image;
    [picker dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}

@end
