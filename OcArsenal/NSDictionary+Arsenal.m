//
//  NSDictionary+Arsenal.m
//  OcArsenal
//
//  Created by cailu on 15/3/5.
//  Copyright (c) 2015年 cailu. All rights reserved.
//

#import "NSDictionary+Arsenal.h"

@implementation NSDictionary (Arsenal)
+ (BOOL)isValid:(id)obj {
    if (obj && [obj isKindOfClass:[NSDictionary class]]) {
        return YES;
    }
    return NO;
}

+ (BOOL)isNotValid:(id)obj {
    return ![NSDictionary isValid:obj];
}

+ (BOOL)isEmpty:(id)obj {
    if ([NSDictionary isValid:obj]) {
        NSDictionary *varObj = obj;
        if ([varObj allValues]>0) {
            return NO;
        }
    }
    return YES;
}

+ (BOOL)isNotEmpty:(id)obj {
    return ![NSDictionary isEmpty:obj];
}
@end
