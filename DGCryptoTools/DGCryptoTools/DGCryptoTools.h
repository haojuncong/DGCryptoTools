//
//  DGCryptoTools.h
//  DGCryptoTools
//
//  Created by 刘凡 on 15/1/1.
//  Copyright (c) 2015年 joyios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DGCryptoTools : NSObject

/**
 类方法方便调用
 */
+ (instancetype)cryptoTools;

#pragma mark - BASE 64 编码 & 解码方法
/**
 *  对给定字符串进行 Base 64 编码
 *
 *  @param str 要编码的字符串
 *
 *  @return BASE 64 编码后的结果
 */
- (NSString *)base64encodeWithString:(NSString *)str;

/**
 *  对给定字符串进行 Base 64 解码
 *
 *  @param str 要解码的字符串
 *
 *  @return BASE 64 解码后的结果
 */
- (NSString *)base64decodeWithString:(NSString *)str;


@end
