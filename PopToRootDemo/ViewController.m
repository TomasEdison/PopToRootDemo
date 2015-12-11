//
//  ViewController.m
//  PopToRootDemo
//
//  Created by caonongyun on 15/12/11.
//  Copyright © 2015年 caonongyun. All rights reserved.
//

#import "ViewController.h"
#import "NYParentViewController.h"

@interface ViewController ()

- (IBAction)tapY:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (IBAction)tapY:(id)sender {
    NYParentViewController *pickerVc = [[NYParentViewController alloc] init];
    
    [pickerVc showPickerVc:self];

    
}
@end
