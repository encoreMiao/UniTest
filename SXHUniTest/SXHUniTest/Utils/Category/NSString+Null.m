//
//  NSString+Null.m
//  SXHUniTest
//
//  Created by sunxh on 16/12/30.
//  Copyright © 2016年 sxh. All rights reserved.
//

#import "NSString+Null.h"

@implementation NSString (Null)

- (BOOL)isNull
{
    if ([self isEqualToString:@""]||[self isEqual:[NSNull null]]) {
        return YES;
    }
    else{
        return NO;
    }
}

@end
