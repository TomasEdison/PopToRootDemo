//
//  NYGroupViewController.m
//  PopToRootDemo
//
//  Created by caonongyun on 15/12/11.
//  Copyright © 2015年 caonongyun. All rights reserved.
//

#import "NYGroupViewController.h"
#import "NYDetailViewController.h"

@interface NYGroupViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *listTableView;
}

@end

@implementation NYGroupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    listTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    listTableView.dataSource = self;
    listTableView.delegate = self;
    [self.view addSubview:listTableView];
    
    UIBarButtonItem *barItem = [[UIBarButtonItem alloc] initWithTitle:@"关闭" style:UIBarButtonItemStyleDone target:self action:@selector(back)];
    
    self.navigationItem.rightBarButtonItem = barItem;
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"选择相册";
    [self jump2StatusVc];
}

#pragma mark 跳转到控制器里面的内容
- (void) jump2StatusVc{
    // 如果是相册
    NYDetailViewController *assetsVc = [[NYDetailViewController alloc] init];
    [self.navigationController pushViewController:assetsVc animated:NO];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

#pragma mark -<UITableViewDelegate>
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *iden = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:iden];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:iden];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NYDetailViewController *assetsVc = [[NYDetailViewController alloc] init];
    [self.navigationController pushViewController:assetsVc animated:YES];
}

- (void)back
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end