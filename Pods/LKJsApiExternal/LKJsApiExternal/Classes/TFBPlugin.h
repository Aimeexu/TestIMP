//
//  TFBPlugin.h
//  TestFramework
//
//  Created by Jessica mini on 2023/12/8.
//

#import <Foundation/Foundation.h>
#import <LKJsApiExternal/JSApi.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TFBPluginDelegate

@required
-(void) execute:(UIViewController *) viewController prams:(JSRequestApi *) params result:(JSCallback)callbackBlock;
@end

@interface TFBPlugin : NSObject<TFBPluginDelegate>

@end

NS_ASSUME_NONNULL_END
