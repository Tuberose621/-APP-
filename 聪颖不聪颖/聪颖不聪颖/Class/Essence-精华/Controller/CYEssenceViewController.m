//
//  CYEssenceViewController.m
//  聪颖不聪颖
//
//  Created by 葛聪颖 on 15/9/6.
//  Copyright (c) 2015年 gecongying. All rights reserved.
//

#import "CYEssenceViewController.h"

@interface CYEssenceViewController ()

@end

@implementation CYEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //    self.navigationItem.title = @"聪颖不聪颖";
    // 这样传图片，它传的图片尺寸和原始尺寸一样
    
    // 设置精华导航栏左边的内容
//        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//        [button setBackgroundImage:[UIImage imageNamed:@"MainTagSubIcon"] forState:UIControlStateNormal];
//        [button setBackgroundImage:[UIImage imageNamed:@"MainTagSubIconClick"] forState:UIControlStateHighlighted];
//        [button sizeToFit];
//        [button addTarget:self action:@selector(CYEssenceClick) forControlEvents:UIControlEventTouchUpInside];
//        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
  
    self.navigationItem.leftBarButtonItem = [CYItemTool itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(CYEssenceClick)];
    //    self.navigationItem.rightBarButtonItem = [CYItemTool itemWithImage:@"nav_coin_icon" highImage:@"nav_coin_icon" target:self action:@selector(rightClick)];
    
    
    
    // 这两种方法所实现的效果是一样的，但是很明显用上面的
    //    UIImageView *titleView = [[UIImageView alloc] init];
    //    titleView.image = [UIImage imageNamed:@"MainTitle"];
    //    [titleView sizeToFit];
    //    self.navigationItem.titleView = titleView;
    
    
}
- (void)CYEssenceClick
{
    NSLog(@"%s",__func__);
}
- (void)rightClick
{
    NSLog(@"%s",__func__);
}

@end