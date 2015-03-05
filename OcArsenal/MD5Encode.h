//
//  MD5Encode.h
//  OcArsenal
//
//  Created by cailu on 15/3/5.
//  Copyright (c) 2015年 cailu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MD5Encode : NSObject
+ (NSString *)getMd5_32Bit_String:(NSString *)srcString;
+ (NSString *)replaceSpecialString:(NSString *)token;
@end
