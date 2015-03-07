//
//  This is free and unencumbered software released into the public domain.
//
//  Anyone is free to copy, modify, publish, use, compile, sell, or
//  distribute this software, either in source code form or as a compiled
//  binary, for any purpose, commercial or non-commercial, and by any
//  means.
//
//  In jurisdictions that recognize copyright laws, the author or authors
//  of this software dedicate any and all copyright interest in the
//  software to the public domain. We make this dedication for the benefit
//  of the public at large and to the detriment of our heirs and
//  successors. We intend this dedication to be an overt act of
//  relinquishment in perpetuity of all present and future rights to this
//  software under copyright law.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
//  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
//  IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
//  OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
//  ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
//  OTHER DEALINGS IN THE SOFTWARE.
//
//  For more information, please refer to <http://unlicense.org/>
//

//  Available from GitHub
//  https://github.com/tparry/NSData-Crypto

#import <Foundation/Foundation.h>

@interface NSString (Crypto)

+ (instancetype) md2WithContentsOfFile:(NSString*) path;
+ (instancetype) md4WithContentsOfFile:(NSString*) path;
+ (instancetype) md5WithContentsOfFile:(NSString*) path;

+ (instancetype) sha1WithContentsOfFile:(NSString*) path;
+ (instancetype) sha224WithContentsOfFile:(NSString*) path;
+ (instancetype) sha256WithContentsOfFile:(NSString*) path;
+ (instancetype) sha384WithContentsOfFile:(NSString*) path;
+ (instancetype) sha512WithContentsOfFile:(NSString*) path;

+ (NSString *)replaceSpecialString:(NSString *)token;

- (NSString*) md2;
- (NSString*) md4;
- (NSString*) md5;

- (NSString*) sha1;
- (NSString*) sha224;
- (NSString*) sha256;
- (NSString*) sha384;
- (NSString*) sha512;

@end
