//
//  NSDictionary_ArsenalTest.m
//  OcArsenal
//
//  Created by cailu on 15/3/7.
//  Copyright (c) 2015年 cailu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSDictionary+Arsenal.h"

@interface NSDictionary_ArsenalTest : XCTestCase

@end

@implementation NSDictionary_ArsenalTest

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testIsValid {
    XCTAssertTrue([NSDictionary isValid:@{}], @"empty NSDictionary");
    XCTAssertFalse([NSDictionary isValid:nil], @"nil NSDictionary.");
    XCTAssertFalse([NSDictionary isValid:@""], @"NSString isValid false.");
    XCTAssertFalse([NSDictionary isValid:@1], @"NSIntage isValid false.");
    XCTAssertFalse([NSDictionary isValid:@[]]);
    XCTAssertFalse([NSDictionary isValid:@1.1]);
}

- (void)testIsNotValid {
    XCTAssertFalse([NSDictionary isNotValid:@{}], @"empty NSDictionary");
    XCTAssertTrue([NSDictionary isNotValid:nil], @"nil NSDictionary.");
    XCTAssertTrue([NSDictionary isNotValid:@""], @"NSString isValid false.");
    XCTAssertTrue([NSDictionary isNotValid:@1], @"NSIntage isValid false.");
    XCTAssertTrue([NSDictionary isNotValid:@[]]);
    XCTAssertTrue([NSDictionary isNotValid:@1.1]);
}

- (void)testIsEmpty {
    NSDictionary *a = @{@1: @"", @2 : @""};
    XCTAssertFalse([NSDictionary isEmpty:a]);
    XCTAssertFalse([NSDictionary isEmpty:@{@"" : @""}], @"empty NSDictionary");
    XCTAssertTrue([NSDictionary isEmpty:@{}], @"empty NSDictionary");
    XCTAssertTrue([NSDictionary isEmpty:nil], @"nil NSDictionary.");
    XCTAssertTrue([NSDictionary isEmpty:@""], @"NSString isValid false.");
    XCTAssertTrue([NSDictionary isEmpty:@1], @"NSIntage isValid false.");
    XCTAssertTrue([NSDictionary isEmpty:@[]]);
    XCTAssertTrue([NSDictionary isEmpty:@1.1]);
}

- (void)testIsNotEmpty {
    XCTAssertTrue([NSDictionary isNotEmpty:@{@"" : @""}], @"empty NSDictionary");
    NSDictionary *a = @{@1: @"", @2 : @""};
    XCTAssertTrue([NSDictionary isNotEmpty:a]);
    XCTAssertFalse([NSDictionary isNotEmpty:@{}], @"empty NSDictionary");
    XCTAssertFalse([NSDictionary isNotEmpty:nil], @"nil NSDictionary.");
    XCTAssertFalse([NSDictionary isNotEmpty:@""], @"NSString isValid false.");
    XCTAssertFalse([NSDictionary isNotEmpty:@1], @"NSIntage isValid false.");
    XCTAssertFalse([NSDictionary isNotEmpty:@[]]);
    XCTAssertFalse([NSDictionary isNotEmpty:@1.1]);
    
}
@end
