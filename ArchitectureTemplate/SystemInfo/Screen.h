//
//  ScreenSize.h
//  ArchitectureTemplate
//
//  Created by Max on 2019/12/25.
//  Copyright © 2019 muyanbiao. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Screen : NSObject

+ (CGRect)size;

+ (CGFloat)width;

+ (CGFloat)height;

@end

NS_ASSUME_NONNULL_END
