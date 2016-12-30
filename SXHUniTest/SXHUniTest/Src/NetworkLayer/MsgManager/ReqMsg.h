//
//  ReaMsg.h
//  SXHUniTest
//
//  Created by sunxh on 16/12/30.
//  Copyright © 2016年 sxh. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSInteger, ReqStyle)
{
    DefaultReqStyle = 0,//默认0 可重复发送请求
    CancelNewReqStyle,//取消当前请求，保留已发送请求（同，刷新）
    SendNewReqStyle,//保留当前请求，取消已发请求（同：条件搜索）
};

@interface ReqMsg : NSObject
@property (nonatomic, assign) ReqStyle style;
@property (nonatomic, strong) NSString *url;//baseURL
@property (nonatomic, strong) NSDictionary *parameters;//URL参数
@property (nonatomic, strong) NSDictionary *headerFields;//head请求头
@property (nonatomic, strong) id body;//请求体，用于post请求
@property (nonatomic, assign) BOOL isCancel;
@property (nonatomic, assign) NSInteger timeOut;//超时

@property (nonatomic, strong) id object;//回调对象

+ (ReqMsg*)createReqMsg:(NSString*)url
             parameters:(NSDictionary*)param
           headerFields:(NSDictionary*)headerFields
                 object:(id)object
                  style:(NSInteger)style;

//加入请求体body
+ (ReqMsg*)createReqMsg:(NSString*)url
             parameters:(NSDictionary*)param
           headerFields:(NSDictionary*)headerFields
                   body:(id)body
                 object:(id)object
                  style:(NSInteger)style;

//添加task和取消
- (void)setTask:(NSURLSessionTask *)task;
- (void)cancelMsgTask;

- (NSString *)getRequestUrl;
- (void)displayRequestUrl;

@end
