//
//  ReqMsgManager.h
//  SXHUniTest
//
//  Created by sunxh on 16/12/30.
//  Copyright © 2016年 sxh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReqMsg.h"

#define ADDREQMSG(msg, reqTask)    [[REQMsgManager sharedInstance] addMSG:msg task:reqTask]
#define REMOVEREQMSG(msg)       [[REQMsgManager sharedInstance] removeReqMsg:msg]
#define CANCELREQMSGOBC(object) [[REQMsgManager sharedInstance] cancelReqMsgWithObject:object]

@interface ReqMsgManager : NSObject

+ (ReqMsgManager *)sharedInstance;

//添加请求消息
- (void)addMSG:(ReqMsg *)msg task:(NSURLSessionTask *)task;

//移除请求消息
- (BOOL)removeReqMsg:(ReqMsg *)msg;

//取消整个回调对象上的请求
- (BOOL)cancelReqMsgWithObject:(id)object;



@end
