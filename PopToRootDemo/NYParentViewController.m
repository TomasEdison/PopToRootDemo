//
//  NYParentViewController.m
//  PopToRootDemo
//
//  Created by caonongyun on 15/12/11.
//  Copyright © 2015年 caonongyun. All rights reserved.
//

#import "NYParentViewController.h"
#import "NYGroupViewController.h"

@interface NYParentViewController ()

@end

@implementation NYParentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

#pragma mark - init Action
- (void) createNavigationController{
    NYGroupViewController *groupVc = [[NYGroupViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:groupVc];
    [self addChildViewController:nav];
    
    [self.view addSubview:nav.view];
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        [self createNavigationController];
    }
    return self;
}

- (void)showPickerVc:(UIViewController *)vc
{
    __weak typeof(vc)weakVc = vc;
    if (weakVc != nil) {
        [weakVc presentViewController:self animated:YES completion:nil];
    }
}


@end
