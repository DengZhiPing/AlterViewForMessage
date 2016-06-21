//
//  DZPAlterView.m
//  AlterView
//
//  Created by dengzhiping on 16/6/20.
//  Copyright © 2016年 dengzhiping. All rights reserved.
//

#import "DZPAlterView.h"
#import "AppDelegate.h"

#define  KScreenWidth [UIScreen mainScreen].bounds.size.width
#define KScreenHeight [UIScreen mainScreen].bounds.size.height

@implementation DZPAlterView

- (instancetype)init{
    self = [super init];
    if (self) {
        self.ViewWidth          =   120.0;
        self.ViewHeight         =   40.0;
        self.textColor          =   [UIColor whiteColor];
        self.backGroundColor    =   [UIColor blackColor];
        self.textFont           =    18;
        self.viewAlpha          =    0.8;
    }
    return self;
}
- (void)alterViewWithString:(NSString *)str{
    
    self.alpha = 0;
    self.frame = CGRectMake((KScreenWidth  - self.ViewWidth)* 0.5,( KScreenHeight - self.ViewHeight)  *0.5 , self.ViewWidth, self.ViewHeight);
    self.backgroundColor = self.backGroundColor;
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 5;
    

    UILabel *textStr = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height)];
    textStr.text = str;
    textStr.font = [UIFont systemFontOfSize:self.textFont];
    textStr.textColor = self.textColor;
    textStr.textAlignment = NSTextAlignmentCenter;
    [self addSubview:textStr];
    
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:.3f];
    [[[UIApplication sharedApplication] delegate].window addSubview:self];
    self.alpha = self.viewAlpha;
    [UIView commitAnimations];
    [self performSelector:@selector(fadeWay) withObject:nil afterDelay:1.5f];
    
}

- (void)fadeWay {

    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3f];
    self.alpha = 0;
    [UIView commitAnimations];
    [self performSelector:@selector(remove) withObject:nil afterDelay:0.3f];
    

}
- (void)remove {
    [self removeFromSuperview];
}


@end
