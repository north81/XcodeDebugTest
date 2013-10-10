//
//  EnvironmentDevices.m
//  UtilsPattern
//
//  Created by A12912 on 13/10/09.
//  Copyright (c) 2013年 chikashi kitano. All rights reserved.
//

#import "EnvironmentDevices.h"


@implementation EnvironmentDevices

// iPhoneかiPadかの判定
+ (BOOL)isPhone
{
    static BOOL isPhone;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        isPhone = [UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPhone;
    });
    return isPhone;
}

//iOS7かの判定
+ (BOOL)isIOS7
{
    NSString *osversion = [UIDevice currentDevice].systemVersion;
    NSArray *a = [osversion componentsSeparatedByString:@"."];
    return ([(NSString *)[a objectAtIndex:0] intValue] >= 7);
}

//iOSのバージョン判定
+ (CGFloat)isOSVeriosn
{
    return ([[[UIDevice currentDevice] systemVersion] floatValue]);
}

// Retinaか非Retinaかの判定
+ (BOOL)isRetina
{
    static BOOL isRetina;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        isRetina = [UIScreen mainScreen].scale == 2.f;
    });
    return isRetina;
}

// 4inchディスプレイかの判定
+ (BOOL)is568h
{
    static BOOL is568h;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        CGFloat height = [UIScreen mainScreen].bounds.size.height;
        is568h = height == 568.f;
    });
    return is568h;
}

// 言語環境が日本語かの判定
+ (BOOL)isJapaneseLanguage
{
    static BOOL isJapanese;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSArray *languages = [NSLocale preferredLanguages];
        NSString *currentLanguage = [languages objectAtIndex:0];
        isJapanese = [currentLanguage isEqualToString:@"ja"];
    });
    return isJapanese;
}

@end
