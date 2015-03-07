//
//  NSArray+ArsenalTest.m
//  OcArsenal
//
//  Created by cailu on 15/3/7.
//  Copyright (c) 2015年 cailu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSArray+Arsenal.h"

@interface NSArray_ArsenalTest : XCTestCase

@end

@implementation NSArray_ArsenalTest

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testIsValid {
    XCTAssertTrue([NSArray isValid:@[]]);
    XCTAssertTrue([NSArray isValid:@[@1]]);
    XCTAssertFalse([NSArray isValid:@""]);
    XCTAssertFalse([NSArray isValid:@1]);
    XCTAssertFalse([NSArray isValid:@1.11]);
    XCTAssertFalse([NSArray isValid:@{}]);
    XCTAssertFalse([NSArray isValid:@"string"]);
    XCTAssertFalse([NSArray isValid:@YES]);
    XCTAssertFalse([NSArray isValid:@NO]);
}

- (void)testIsNotValid {
    XCTAssertFalse([NSArray isNotValid:@[]]);
    XCTAssertFalse([NSArray isNotValid:@[@1]]);
    XCTAssertTrue([NSArray isNotValid:@""]);
    XCTAssertTrue([NSArray isNotValid:@1]);
    XCTAssertTrue([NSArray isNotValid:@1.11]);
    XCTAssertTrue([NSArray isNotValid:@{}]);
    XCTAssertTrue([NSArray isNotValid:@"string"]);
    XCTAssertTrue([NSArray isNotValid:@YES]);
    XCTAssertTrue([NSArray isNotValid:@NO]);
}

- (void)testIsNotEmpty {
    XCTAssertTrue([NSArray isNotEmpty:@[@1]]);
    XCTAssertFalse([NSArray isNotEmpty:@""]);
    XCTAssertFalse([NSArray isNotEmpty:nil]);
    XCTAssertFalse([NSArray isNotEmpty:@{}]);
    XCTAssertFalse([NSArray isNotEmpty:@{@"":@""}]);
}

- (void)testIsEmpty {
    XCTAssertFalse([NSArray isEmpty:@[@1]]);
    XCTAssertTrue([NSArray isEmpty:@""]);
    XCTAssertTrue([NSArray isEmpty:nil]);
    XCTAssertTrue([NSArray isEmpty:@{}]);
    XCTAssertTrue([NSArray isEmpty:@{@"":@""}]);
}

- (void)testJoin {
    NSArray *array = @[];
    XCTAssertEqualObjects([array join:@","], @"");
    
    array = @[@1];
    XCTAssertEqualObjects([array join:@","], @"1");
    
    array = @[@1, @""];
    XCTAssertEqualObjects([array join:@","], @"1,");
    
    array = @[@1, @"", @""];
    XCTAssertEqualObjects([array join:@","], @"1,,");
    
    array = @[@1, @" ", @" "];
    XCTAssertEqualObjects([array join:@","], @"1, , ");
    
    array = @[@",", @""];
    XCTAssertEqualObjects([array join:@","], @",,");
}
@end
