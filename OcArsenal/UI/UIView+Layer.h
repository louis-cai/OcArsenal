//
//  UIView+Layer.h
//  OcArsenal
//
//  Created by cailu on 15/4/10.
//  Copyright (c) 2015年 cailu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Layer)
@property (nonatomic,assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic,strong) IBInspectable UIColor *boardColor;
@property (nonatomic,assign) IBInspectable CGFloat borderWidth;
@end
