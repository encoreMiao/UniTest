//
//  NSString+EncodingAdditions.m
//  SXHUniTest
//
//  Created by sunxh on 16/12/30.
//  Copyright © 2016年 sxh. All rights reserved.
//

#import "NSString+EncodingAdditions.h"

@implementation NSString (EncodingAdditions)
- (NSString *)URLEncodedString
{
    //编码
    NSString *result = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)self, NULL, CFSTR("!*'();:@&=+$,/?%#[]"), kCFStringEncodingUTF8));
    return result;
}
- (NSString *)URLDecodedString
{
    //解编码
    NSString *result = (NSString *)CFBridgingRelease(CFURLCreateStringByReplacingPercentEscapesUsingEncoding(kCFAllocatorDefault, (CFStringRef)self, CFSTR(""), kCFStringEncodingUTF8));
    return result;
    
}
@end
