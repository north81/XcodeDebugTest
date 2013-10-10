//
//  AppDelegate.h
//  XcodeDebugTest
//
//  Created by A12912 on 13/10/10.
//  Copyright (c) 2013年 chikashi kitano. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AppDelegate : UIResponder <UIApplicationDelegate>


@property (strong, nonatomic) UIWindow *window;

// デバイス情報の格納変数
@property (strong, nonatomic) NSString *phone;
@property (strong, nonatomic) NSString *ios7;
@property (strong, nonatomic) NSString *display;
@property (strong, nonatomic) NSString *screen;
@property (strong, nonatomic) NSString *language;
@property float version;


@end
