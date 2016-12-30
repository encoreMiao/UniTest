//
//  ReaMsg.m
//  SXHUniTest
//
//  Created by sunxh on 16/12/30.
//  Copyright © 2016年 sxh. All rights reserved.
//

#import "RegMsg.h"

@interface RegMsg()
@property (nonatomic, assign) NSInteger msgId;
@property (nonatomic, strong) NSURLSessionTask *task;
@end


@implementation RegMsg
- (id)init{
    if (self = [super init]) {
        _msgId = 0;
        _task = nil;
        _url = nil;
        _isCancel = NO;
        _parameters = nil;
        _headerFields = nil;
        _body = nil;
        _style = DefaultReqStyle;
        _timeOut = 30;
    }
    return self;
}

+ (ReqMsg*)createReqMsg:(NSString*)url
             parameters:(NSDictionary*)param
           headerFields:(NSDictionary*)headerFields
                 object:(id)object
                  style:(NSInteger)style
{
    static NSInteger mID = 0;
    
    RegMsg *msg = [[RegMsg alloc]init];
    msg.msgId = ++mID;//每一次创建msgID都会加1
    msg.url = url;
    msg.parameters = param;
    msg.headerFields = headerFields;
    msg.style = style;
    msg.object = object;
    
}

//加入请求体body
+ (ReqMsg*)createReqMsg:(NSString*)url
             parameters:(NSDictionary*)param
           headerFields:(NSDictionary*)headerFields
                   body:(id)body
                 object:(id)object
                  style:(NSInteger)style
{
    static NSInteger mID = 0;
    
    ReqMsg *msg = [[ReqMsg alloc] init];
    msg.msgId = ++mID;
    msg.url = url;
    msg.parameters = param;
    msg.headerFields = headerFields;
    msg.body = body;
    msg.style = style;
    msg.object = object;
    
    return msg;
}

//添加task和取消
- (void)setTask:(NSURLSessionTask *)task
{
    _task = task;
}
- (void)cancelMsgTask
{
    if (_task) {
        [_task cancel];
    }
}

- (NSString *)getRequestUrl
{
    NSString *reqUrl = [NSString ];
}
- (void)displayRequestUrl
{
    NSString *reqUrl = [self getRequestUrl];
    NSLog(@"<%@> Url = %@",[_object class],reqUrl);
}
@end
