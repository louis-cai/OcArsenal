//
//  NSArray+Arsenal.m
//  OcArsenal
//
//  Created by cailu on 15/3/5.
//  Copyright (c) 2015年 cailu. All rights reserved.
//

#import "NSArray+Arsenal.h"

@implementation NSArray (Arsenal)
+ (BOOL)isValid:(id)obj {
    return obj && [obj isKindOfClass:[NSArray class]];
}

+ (BOOL)isNotValid:(id)obj {
    return ![NSArray isValid:obj];
}

+ (BOOL)isEmpty:(id)obj {
    return ![NSArray isNotEmpty:obj];
}

+ (BOOL)isNotEmpty:(id)obj {
    return [NSArray isValid:obj] && [(NSArray *)obj count] > 0;
}

- (NSString *)join:(NSString *)delimiter {
    if (0 == self.count) {
        return @"";
    } else if (1 == self.count) {
        id value = [self objectAtIndex:0];
        if ([value isKindOfClass:[NSString class]]) {
            return value;
        } else {
            return [value stringValue];
        }
    } else {
        NSMutableString * result = [NSMutableString string];
        
        for (NSUInteger i = 0; i < self.count; ++i) {
            id sd = [self objectAtIndex:i];
            NSString *data = nil;
            if ([sd isKindOfClass:[NSString class]]) {
                data = sd;
            } else {
                data = [NSString stringWithFormat:@"%@",sd];
            }
            [result appendString:data];
            if (i + 1 < self.count) {
                [result appendString:delimiter];
            }
        }
        return result;
    }
}
@end
