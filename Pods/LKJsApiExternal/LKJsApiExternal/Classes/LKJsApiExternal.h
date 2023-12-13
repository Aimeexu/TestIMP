//
//  LKJsApiExternalFramework.h
//  LKJsApiExternalFramework
//
//  Created by Jessica mini on 2023/12/8.
//

#import <Foundation/Foundation.h>

//! Project version number for LKJsApiExternalFramework.
FOUNDATION_EXPORT double LKJsApiExternalFrameworkVersionNumber;

//! Project version string for LKJsApiExternalFramework.
FOUNDATION_EXPORT const unsigned char LKJsApiExternalFrameworkVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <LKJsApiExternal/PublicHeader.h>


#import <LKJsApiExternal/TFBPlugin.h>
#import <LKJsApiExternal/JSApi.h>
#import <LKJsApiExternal/JSBUtil.h>
#import <LKJsApiExternal/DWKWebView.h>


@interface LKJsApiExternal : NSObject

+ (LKJsApiExternal *)sharedLKJsApiExternal;
@property (nonatomic, strong) id <TFBPluginDelegate> container;


@end
