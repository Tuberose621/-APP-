//
//  CYMeViewController.m
//  聪颖不聪颖
//
//  Created by 葛聪颖 on 15/9/6.
//  Copyright (c) 2015年 gecongying. All rights reserved.
//
#import "CYMeViewController.h"
#import "CYSettingViewController.h"

@interface CYMeViewController ()

@end

@implementation CYMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"我的";
    
    // 我的导航栏右边的内容
    //    UIBarButtonItem *moonButton = [self itemWithImage:@"mine-moon-icon" highImage:@"mine-moon-icon-click" action:@selector(moonClick)];
    //    UIBarButtonItem *settingButton = [self itemWithImage:@"mine-setting-icon" highImage:@"mine-setting-icon-click" action:@selector(settingClick)];
    UIBarButtonItem *moonButton = [CYItemTool itemWithImage:@"mine-moon-icon" highImage:@"mine-moon-icon-click" target:self action:@selector(moonClick)];
    UIBarButtonItem *settingButton = [CYItemTool itemWithImage:@"mine-setting-icon" highImage:@"mine-setting-icon-click" target:self action:@selector(settingClick)];
    
    self.navigationItem.rightBarButtonItems = @[settingButton,moonButton];
//        UIButton *moonButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        [moonButton setBackgroundImage:[UIImage imageNamed:@"mine-moon-icon"] forState:UIControlStateNormal];
//        [moonButton setBackgroundImage:[UIImage imageNamed:@"mine-moon-icon-click"] forState:UIControlStateHighlighted];
//        [moonButton sizeToFit];
//        [moonButton addTarget:self action:@selector(moonClick) forControlEvents:UIControlEventTouchUpInside];
//    
//        UIButton *settingButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        [settingButton setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon"] forState:UIControlStateNormal];
//        [settingButton setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon-click"] forState:UIControlStateHighlighted];
//        [settingButton sizeToFit];
//        [settingButton addTarget:self action:@selector(settingClick) forControlEvents:UIControlEventTouchUpInside];
//    
//            self.navigationItem.rightBarButtonItems = @[
//                                                   [[UIBarButtonItem alloc] initWithCustomView:settingButton],
//                                                   [[UIBarButtonItem alloc] initWithCustomView:moonButton]
//                                                   ];
}
- (void)moonClick
{
    NSLog(@"%s",__func__);
}


// 开始抽取代码了
//- (UIBarButtonItem *)itemWithImage:(NSString *)image highImage:(NSString *)highImage action:(SEL)action
//{
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
//    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
//    [button sizeToFit];
//    [button addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
//
//    return [[UIBarButtonItem alloc] initWithCustomView:button];
//}

- (void)settingClick
{
    //    self.navigationController.navigationBar.barTintColor = [UIColor darkGrayColor]; //设置导航栏的颜色
    //    self.navigationController.navigationBar.tintColor = [UIColor yellowColor]; // 设置返回按钮字体的颜色
    
    CYSettingViewController *setting = [[CYSettingViewController alloc] init];
    setting.hidesBottomBarWhenPushed = YES; // 当push这个控制器时，会自动隐藏底部的工具条
    [self.navigationController pushViewController:setting animated:YES];
}

@end