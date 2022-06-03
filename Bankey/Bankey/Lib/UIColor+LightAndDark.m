//
//  UIColor+LightAndDark.m
//  Money Lover
//
//  Created by Pham Quang Thang on 11/6/15.
//  Copyright © 2015 ZooStudio. All rights reserved.
//

#import "UIColor+LightAndDark.h"

@implementation UIColor (LightAndDark)

- (UIColor *)lighterColor {
    CGFloat h, s, b, a;
    if ([self getHue:&h saturation:&s brightness:&b alpha:&a])
        return [UIColor colorWithHue:h
                          saturation:s
                          brightness:MIN(b * 1.3, 1.0)
                               alpha:a];
    return nil;
}

- (UIColor *)darkerColor {
    CGFloat h, s, b, a;
    if ([self getHue:&h saturation:&s brightness:&b alpha:&a])
        return [UIColor colorWithHue:h
                          saturation:s
                          brightness:b * 0.75
                               alpha:a];
    return nil;
}

+ (UIColor *)labelColorWithFallbackColor:(UIColor *)fallbackColor {

    if (@available(iOS 13.0, *)) {
        return [self colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            return [UIColor labelColor];
        }];
    } else {
        return fallbackColor;
    }
}

+ (UIColor *)secondaryLabelColorWithFallbackColor:(UIColor *)fallbackColor {

    if (@available(iOS 13.0, *)) {
        return [self colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            return [UIColor secondaryLabelColor];
        }];
    } else {
        return fallbackColor;
    }
}

+ (UIColor *)tertiarySystemBackgroundColorWithFallbackColor:(UIColor *)fallbackColor {

    if (@available(iOS 13.0, *)) {
        return [self colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            return [UIColor tertiarySystemBackgroundColor];
        }];
    } else {
        return fallbackColor;
    }
}

+ (UIColor *)tertiaryLabelColorWithFallbackColor:(UIColor *)fallbackColor {

    if (@available(iOS 13.0, *)) {
        return [self colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            return [UIColor tertiaryLabelColor];
        }];
    } else {
        return fallbackColor;
    }
}

+ (UIColor *)groupTableViewBackgroundColorWithFallbackColor:(UIColor *)fallbackColor {

    if (@available(iOS 13.0, *)) {
        return [self colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            return [UIColor groupTableViewBackgroundColor];
        }];
    } else {
        return fallbackColor;
    }
}

+ (UIColor *)systemBackgroundColorWithFallbackColor:(UIColor *)fallbackColor {

    if (@available(iOS 13.0, *)) {
        return [self colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            return [UIColor systemBackgroundColor];
        }];
    } else {
        return fallbackColor;
    }
}

+ (UIColor *)secondarySystemBackgroundColorWithFallbackColor:(UIColor *)fallbackColor {

    if (@available(iOS 13.0, *)) {
        return [self colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            return [UIColor secondarySystemBackgroundColor];
        }];
    } else {
        return fallbackColor;
    }
}

+ (UIColor *)secondarySystemGroupedBackgroundColorWithFallbackColor:(UIColor *)fallbackColor {

    if (@available(iOS 13.0, *)) {
        return [self colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            return [UIColor secondarySystemGroupedBackgroundColor];
        }];
    } else {
        return fallbackColor;
    }
}


+ (UIColor *)separatorColorWithFallbackColor:(UIColor *)fallbackColor {

    if (@available(iOS 13.0, *)) {
        return [self colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            return [UIColor separatorColor];
        }];
    } else {
        return fallbackColor;
    }
}

+ (UIColor *)budgetChartColor {
    if (@available(iOS 13.0, *)) {
        return [self colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            switch (traitCollection.userInterfaceStyle) {
                case UIUserInterfaceStyleDark:
                    return [UIColor secondarySystemBackgroundColor];
                case UIUserInterfaceStyleLight:
                    return [UIColor whiteColor];
                default:
                    break;
            }
            return [UIColor whiteColor];
        }];
    } else {
        return [UIColor whiteColor];
    }
}

+ (UIColor *)facebookSigninBorderColor {
    if (@available(iOS 13.0, *)) {
        return [self colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            switch (traitCollection.userInterfaceStyle) {
                case UIUserInterfaceStyleDark:
                    return [UIColor clearColor];
                case UIUserInterfaceStyleLight:
                    return [UIColor systemBlueColor];
                default:
                    break;
            }
            return [UIColor systemBlueColor];
        }];
    } else {
        return [UIColor systemBlueColor];
    }
}

+ (UIColor *)gooleSigninBorderColor {
    if (@available(iOS 13.0, *)) {
        return [self colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            switch (traitCollection.userInterfaceStyle) {
                case UIUserInterfaceStyleDark:
                    return [UIColor clearColor];
                    break;
                case UIUserInterfaceStyleLight:
                    return [UIColor systemRedColor];
                default:
                    break;
            }
            return [UIColor systemRedColor];
        }];
    } else {
        return [UIColor systemRedColor];
    }
}

+ (UIColor *)getColorWithLightColor:(UIColor *)lightColor darkColor:(UIColor *)darkColor {
    if (@available(iOS 13.0, *)) {
        return [self colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            switch (traitCollection.userInterfaceStyle) {
                case UIUserInterfaceStyleDark:
                    return darkColor;
                    break;
                case UIUserInterfaceStyleLight:
                    return lightColor;
                default:
                    break;
            }
            return lightColor;
        }];
    } else {
        return lightColor;
    }
}

@end
