//
//  MD5Encode.m
//  OcArsenal
//
//  Created by cailu on 15/3/5.
//  Copyright (c) 2015年 cailu. All rights reserved.
//

#import "MD5Encode.h"
#import "CommonCrypto/CommonDigest.h"

@implementation MD5Encode
//32位小写MD5加密方式
+ (NSString *)getMd5_32Bit_String:(NSString *)srcString {
    const char *cStr = [srcString UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5( cStr, (CC_LONG)strlen(cStr), digest );
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02x", digest[i]];
    }
    return [result lowercaseString];
}

+ (NSString *)replaceSpecialString:(NSString *)token {
    token = [token stringByReplacingOccurrencesOfString :@"@" withString:@"%40"];
    token = [token stringByReplacingOccurrencesOfString :@"=" withString:@"%3D"];
    token = [token stringByReplacingOccurrencesOfString :@"&" withString:@"%26"];
    token = [token stringByReplacingOccurrencesOfString :@"," withString:@"%252C"];
    return token;
}
@end
