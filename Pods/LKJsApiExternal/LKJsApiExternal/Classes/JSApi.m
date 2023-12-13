//
//  JSApi.m
//  TFBank
//
//  Created by Liu Fei on 2019/9/5.
//  Copyright © 2019 TFB. All rights reserved.
//

#import "JSApi.h"

// TODO
//#import "TFBPluginEngine.h"
@implementation JSApi

-(instancetype) initWithContext:(UIViewController *) context {
    self = [super init];
    if (self) {
        self.viewController = context;
    }
    return self;
}

- (void) asyn:(NSString *) msg result:(JSCallback) completionHandler
{
//    if(self.viewController)
        // TODO
//    [[TFBPluginEngine sharedTFBPluginEngine] startPlugin:self.viewController prams:msg result:completionHandler];
}

@end

@implementation JSRequestApi

@end

@implementation JSResponseApi
-(instancetype) initWithResponseId:(NSString *) responseId
                            status:(NSString *) status
                           message:(NSString *) message
                             value:(id) value {
    self = [super init];
    if (self)
    {
        self.code = [status intValue];
        self.msg = message;
        self.data = value;
    }
    return self;
}

-(instancetype) initWithStatus:(NSString *) status
                       message:(NSString *) message
                         value:(id) value {
    return [self initWithResponseId:nil status:status message:message value:value];
}
@end
