//
//  AppDelegate.m
//  XcodeDebugTest
//
//  Created by A12912 on 13/10/10.
//  Copyright (c) 2013年 chikashi kitano. All rights reserved.
//

#import "AppDelegate.h"
#import <BugSense-iOS/BugSenseController.h>
#import "EnvironmentDevices.h"
#import "MainViewController.h"


@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    [BugSenseController sharedControllerWithBugSenseAPIKey:@"22ecd2a6"];
    
    self.phone = (EnvironmentDevices.isPhone)?(@"iPhone"):(@"iPad");
    self.ios7 = (EnvironmentDevices.isIOS7)?(@"iOS7"):(@"OldVersion");
    self.version = EnvironmentDevices.isOSVeriosn;
    self.display = (EnvironmentDevices.isRetina)?(@"Retina"):(@"Normal");
    self.screen = (EnvironmentDevices.is568h)?(@"4inch"):(@"2inch");
    self.language = (EnvironmentDevices.isJapaneseLanguage)?(@"japan"):(@"other");
    
    NSLog(@"AppDelegate");
    NSLog(@"phone:%@", self.phone);
    NSLog(@"ios7:%@", self.ios7);
    NSLog(@"version:%f", self.version);
    NSLog(@"display:%@", self.display);
    NSLog(@"screen:%@", self.screen);
    NSLog(@"language:%@", self.language);
    NSLog(@"---");
    
    self.window.rootViewController = [[MainViewController alloc] init];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end
