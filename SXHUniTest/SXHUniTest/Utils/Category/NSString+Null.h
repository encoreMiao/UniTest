//
//  NSString+Null.h
//  SXHUniTest
//
//  Created by sunxh on 16/12/30.
//  Copyright © 2016年 sxh. All rights reserved.
//
/*
 判端NSString是否为空
 */

#import <Foundation/Foundation.h>

#define isNull(s)  ((s==nil)||[s isNull])

@interface NSString (Null)

- (BOOL)isNull;

@end

