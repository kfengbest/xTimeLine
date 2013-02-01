//
//  CreateTimelineViewController.m
//  xTimeline
//
//  Created by fengka on 2/1/13.
//  Copyright (c) 2013 adsk. All rights reserved.
//

#import "CreateTimelineViewController.h"
#import "PublishingPhotoViewController.h"

@interface CreateTimelineViewController ()
{
    PublishingPhotoViewController* _publishPhotoController;
}
@end

@implementation CreateTimelineViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    _publishPhotoController = nil;
    
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
    
    [self dismissViewControllerAnimated:NO completion:^{
        
        UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
        
        UIStoryboard* sb = [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone"bundle:nil];
        
        PublishingPhotoViewController* pPublishPhotoController = [sb instantiateViewControllerWithIdentifier:@"PublishingPhotoViewController"];
        pPublishPhotoController.photo = image;
        
        [self presentViewController:pPublishPhotoController animated:YES completion:nil];

    }];
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo NS_DEPRECATED_IOS(2_0, 3_0)
{
    //    self.imageView.image = image;
   // [picker dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"willShowViewController");
}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"didShowViewController");

}



@end
