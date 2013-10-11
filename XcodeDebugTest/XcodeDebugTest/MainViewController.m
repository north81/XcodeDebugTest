//
//  MainViewController.m
//  XcodeDebugTest
//
//  Created by A12912 on 13/10/10.
//  Copyright (c) 2013年 chikashi kitano. All rights reserved.
//

#import "MainViewController.h"


@interface MainViewController ()

@end


@implementation MainViewController


-(void)crashPressed:(UIButton*)button
{
    [NSException raise:NSInvalidArgumentException format:@"Foo must not be nil"];
}

- (id)init
{
    self = [super init];
    if (self) {
        self.app = [[UIApplication sharedApplication] delegate];
        
        NSLog(@"MainViewController");
        NSLog(@"phone:%@", self.app.phone);
        NSLog(@"ios7:%@", self.app.ios7);
        NSLog(@"version:%f", self.app.version);
        NSLog(@"display:%@", self.app.display);
        NSLog(@"screen:%@", self.app.screen);
        NSLog(@"language:%@", self.app.language);
        NSLog(@"---");
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(10, 10, 200, 50);
    [btn setTitle:@"クラッシュするよ" forState:UIControlStateNormal];
    // ボタンがタッチダウンされた時にhogeメソッドを呼び出す
    [btn addTarget:self action:@selector(crashPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
