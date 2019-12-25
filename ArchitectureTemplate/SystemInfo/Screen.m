//
//  ScreenSize.m
//  ArchitectureTemplate
//
//  Created by Max on 2019/12/25.
//  Copyright © 2019 muyanbiao. All rights reserved.
//

#import "Screen.h"

@implementation Screen

+ (CGRect)size {
    CGRect mainScreenBounds = [UIScreen mainScreen].bounds;
    return mainScreenBounds;
}

+ (CGFloat)width {
    CGRect mainScreenBounds = [UIScreen mainScreen].bounds;
    return mainScreenBounds.size.width;
}

+ (CGFloat)height {
    CGRect mainScreenBounds = [UIScreen mainScreen].bounds;
    return mainScreenBounds.size.height;
}

@end
