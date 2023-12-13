//
//  WKWebView+AccessoryHiding.h
//  CGNB
//
//  Created by singers on 2017/12/15.
//  Copyright © 2017年 CGNB. All rights reserved.
//

#import <WebKit/WebKit.h>
#import "DWKWebView.h"

@interface DWKWebView (AccessoryHiding)

- (void)removeInputAccessoryView;
- (void)wkWebViewShowKeybord;

@end
