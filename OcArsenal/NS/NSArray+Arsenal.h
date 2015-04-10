//
//  NSArray+Arsenal.h
//  OcArsenal
//
//  Created by cailu on 15/3/5.
//  Copyright (c) 2015年 cailu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Arsenal)
+ (BOOL)isValid:(id)obj;

+ (BOOL)isNotValid:(id)obj;

+ (BOOL)isEmpty:(id)obj;

+ (BOOL)isNotEmpty:(id)obj;

- (NSString *)join:(NSString *)delimiter;
@end
