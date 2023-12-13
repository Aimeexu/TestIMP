//
//  TFBPlugin.m
//  TestFramework
//
//  Created by Jessica mini on 2023/12/8.
//

#import "TFBPlugin.h"
#import "DSBridge/dsbridge.h"

@implementation TFBPlugin

-(void) execute:(UIViewController *) viewController prams:(JSRequestApi *) params result:(JSCallback)callbackBlock {
    if(!params.interfaceName || [@"" isEqualToString:params.interfaceName]){
        JSResponseApi *response = [[JSResponseApi alloc] initWithStatus:@"1" message:@"插件名为空" value:@{}];
        callbackBlock(response,YES);
//        callbackBlock([response yy_modelToJSONString],YES);
        return;
    }
}

@end
