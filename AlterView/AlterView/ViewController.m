//
//  ViewController.m
//  AlterView
//
//  Created by dengzhiping on 16/6/20.
//  Copyright © 2016年 dengzhiping. All rights reserved.
//

#import "ViewController.h"
#import "DZPAlterView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor greenColor];
    [btn addTarget:self action:@selector(btnPress) forControlEvents:UIControlEventTouchDown];
    btn.frame = CGRectMake(20, 50, 100, 100);
    [btn setTitle:@"点我" forState:0];
    [self.view addSubview:btn];
    


}

- (void)btnPress{
    DZPAlterView *alter = [[DZPAlterView alloc]init];
    [alter alterViewWithString:@"正在加载..."];
    [self.view addSubview:alter];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
