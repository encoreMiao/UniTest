//
//  NSString+EncodingAdditions.h
//  SXHUniTest
//
//  Created by sunxh on 16/12/30.
//  Copyright © 2016年 sxh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (EncodingAdditions)

- (NSString *)URLEncodedString;
- (NSString *)URLDecodedString;

@end
