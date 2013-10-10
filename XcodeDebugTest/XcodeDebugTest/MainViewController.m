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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
