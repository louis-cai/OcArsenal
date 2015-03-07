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
    return obj && [obj isKindOfClass:[NSDictionary class]];
}

+ (BOOL)isNotValid:(id)obj {
    return ![NSDictionary isValid:obj];
}

+ (BOOL)isEmpty:(id)obj {
    return ![NSDictionary isNotEmpty:obj];
}

+ (BOOL)isNotEmpty:(id)obj {
    return [NSDictionary isValid:obj] && [(NSDictionary *)obj count] > 0;
}
@end
