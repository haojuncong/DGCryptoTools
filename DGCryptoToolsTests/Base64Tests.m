//
//  Base64Tests.m
//  DGCryptoTools
//
//  Created by 刘凡 on 15/1/1.
//  Copyright (c) 2015年 joyios. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "DGCryptoTools.h"

@interface Base64Tests : XCTestCase
@property (nonatomic, strong) DGCryptoTools *cryptoTools;
@end

@implementation Base64Tests

- (void)setUp {
    [super setUp];
    
    _cryptoTools = [DGCryptoTools cryptoTools];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testBase64Encode {
    NSString *result = [self.cryptoTools base64encodeWithString:@"A"];
    XCTAssertTrue([result isEqualToString:@"QQ=="], @"编码错误");
}

- (void)testBase64Decode {
    NSString *result = [self.cryptoTools base64decodeWithString:@"QQ=="];
    XCTAssertTrue([result isEqualToString:@"A"], @"解码错误");
}

@end
