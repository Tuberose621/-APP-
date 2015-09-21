//
//  CYFocusViewController.m
//  聪颖不聪颖
//
//  Created by 葛聪颖 on 15/9/6.
//  Copyright (c) 2015年 gecongying. All rights reserved.
//

#import "CYFocusViewController.h"

@interface CYFocusViewController ()

@end

@implementation CYFocusViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"我的关注";
    
    // 我的关注导航栏左边的内容
    //    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    //    [button setBackgroundImage:[UIImage imageNamed:@"friendsRecommentIcon"] forState:UIControlStateNormal];
    //    [button setBackgroundImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] forState:UIControlStateHighlighted];
    //    [button sizeToFit];
    //    [button addTarget:self action:@selector(CYFocusViewClick) forControlEvents:UIControlEventTouchUpInside];
    //    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.navigationItem.leftBarButtonItem = [CYItemTool itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" target:self action:@selector(CYFocusViewClick)];
}
- (void)CYFocusViewClick
{
    NSLog(@"%s",__func__);
}


//    self.title =@"我的关注";
//    相当于下面两句
//    self.navigationItem.title = @"我的关注";
//    self.tabBarItem.title = @"我的关注";




@end
