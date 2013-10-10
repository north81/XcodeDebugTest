//
//  EnvironmentDevices.h
//  UtilsPattern
//
//  Created by A12912 on 13/10/09.
//  Copyright (c) 2013年 chikashi kitano. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface EnvironmentDevices : NSObject

+ (BOOL)isPhone;// iPhoneかiPadかの判定
+ (BOOL)isIOS7;// iOS7かの判定
+ (CGFloat)isOSVeriosn;//iOSのバージョン判定
+ (BOOL)isRetina;// Retinaか非Retinaかの判定
+ (BOOL)is568h;// 4inchディスプレイかの判定
+ (BOOL)isJapaneseLanguage;// 言語環境が日本語かの判定

@end
