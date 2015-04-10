//
//  UIView+Layer.m
//  OcArsenal
//
//  Created by cailu on 15/4/10.
//  Copyright (c) 2015年 cailu. All rights reserved.
//

#import "UIView+Layer.h"

@implementation UIView (Layer)

@dynamic cornerRadius,boardColor,borderWidth;

- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.layer.masksToBounds = YES;
    self.userInteractionEnabled = YES;
    self.layer.cornerRadius = cornerRadius;
}

- (void)setBoardColor:(UIColor *)boardColor {
    if (self.layer.borderWidth == 0) {
        self.layer.borderWidth = 1;
    }
    self.layer.borderColor = boardColor.CGColor;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    self.layer.borderWidth = borderWidth;
}
@end
