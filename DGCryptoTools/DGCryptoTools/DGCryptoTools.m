//
//  DGCryptoTools.m
//  DGCryptoTools
//
//  Created by 刘凡 on 15/1/1.
//  Copyright (c) 2015年 joyios. All rights reserved.
//

#import "DGCryptoTools.h"

@implementation DGCryptoTools

+ (instancetype)cryptoTools {
    DGCryptoTools *tools = [[self alloc] init];
    return tools;
}

#pragma mark - BASE 64 编码 & 解码方法
- (NSString *)base64encodeWithString:(NSString *)str {
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    
    return [data base64EncodedStringWithOptions:0];
}

- (NSString *)base64decodeWithString:(NSString *)str {
    NSData *data = [[NSData alloc] initWithBase64EncodedString:str options:0];
    
    return [[NSString alloc] initWithData:data encoding:0];
}

@end
