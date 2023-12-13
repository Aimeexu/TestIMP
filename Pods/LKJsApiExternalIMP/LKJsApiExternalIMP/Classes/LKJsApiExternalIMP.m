//
//  LKJsApiExternalIMP.m
//  LKJsApiExternalIMP
//
//  Created by Jessica mini on 2023/12/11.
//

#import "LKJsApiExternalIMP.h"
#import <LKJsApiExternal/LKJsApiExternal.h>

@interface LKJsApiExternalIMP () <TFBPluginDelegate>

@end

@implementation LKJsApiExternalIMP

+ (void)load {
    [LKJsApiExternal sharedLKJsApiExternal].container = [[LKJsApiExternalIMP alloc] init];
}

- (void)execute:(UIViewController *)viewController prams:(JSRequestApi *)params result:(nonnull JSCallback)callbackBlock {
    NSLog(@"====== %@", params.interfaceName);
    callbackBlock([NSString stringWithFormat:@"这是修改的name:%@", params.interfaceName], YES);
}

@end
