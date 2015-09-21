//
//  CYNewPostViewController.m
//  聪颖不聪颖
//
//  Created by 葛聪颖 on 15/9/6.
//  Copyright (c) 2015年 gecongying. All rights reserved.
//

#import "CYNewPostViewController.h"

@interface CYNewPostViewController ()

@end

@implementation CYNewPostViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置精华导航栏左边的内容
    //    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    //    [button setBackgroundImage:[UIImage imageNamed:@"MainTagSubIcon"] forState:UIControlStateNormal];
    //    [button setBackgroundImage:[UIImage imageNamed:@"MainTagSubIcon"] forState:UIControlStateHighlighted];
    //    [button sizeToFit];
    //    [button addTarget:self action:@selector(CYNewPostViewClick) forControlEvents:UIControlEventTouchUpInside];
    //    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.navigationItem.leftBarButtonItem = [CYItemTool itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIcon" target:self action:@selector(newpostClick)];
    
    
    
    
    // 这两种方法所实现的效果是一样的，但是很明显用上面的
    //    UIImageView *titleView = [[UIImageView alloc] init];
    //    titleView.image = [UIImage imageNamed:@"MainTitle"];
    //    [titleView sizeToFit];
    //    self.navigationItem.titleView = titleView;
    
    
}
- (void)newpostClick
{
    NSLog(@"%s",__func__);
}


@end