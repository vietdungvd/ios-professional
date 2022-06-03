//
//  UIColor+LightAndDark.h
//  Money Lover
//
//  Created by Pham Quang Thang on 11/6/15.
//  Copyright © 2015 ZooStudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (LightAndDark)

- (UIColor *)lighterColor;
- (UIColor *)darkerColor;
+ (UIColor *)labelColorWithFallbackColor:(UIColor *)fallbackColor;
+ (UIColor *)secondaryLabelColorWithFallbackColor:(UIColor *)fallbackColor;
+ (UIColor *)tertiaryLabelColorWithFallbackColor:(UIColor *)fallbackColor;
+ (UIColor *)groupTableViewBackgroundColorWithFallbackColor:(UIColor *)fallbackColor;
+ (UIColor *)tertiarySystemBackgroundColorWithFallbackColor:(UIColor *)fallbackColor;
+ (UIColor *)systemBackgroundColorWithFallbackColor:(UIColor *)fallbackColor;
+ (UIColor *)secondarySystemBackgroundColorWithFallbackColor:(UIColor *)fallbackColor;
+ (UIColor *)secondarySystemGroupedBackgroundColorWithFallbackColor:(UIColor *)fallbackColor;
+ (UIColor *)getColorWithLightColor:(UIColor *)lightColor darkColor:(UIColor *)darkColor;
+ (UIColor *)separatorColorWithFallbackColor:(UIColor *)fallbackColor;
+ (UIColor *)budgetChartColor;
+ (UIColor *)facebookSigninBorderColor;
+ (UIColor *)gooleSigninBorderColor;

@end
