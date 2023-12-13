//
//  WKWebView+AccessoryHiding.m
//  CGNB
//
//  Created by singers on 2017/12/15.
//  Copyright © 2017年 CGNB. All rights reserved.
//

#import "DWKwebView+AccessoryHiding.h"
#import  <objc/runtime.h>
#import <UIKit/UIKit.h>

@implementation DWKWebView (HackishAccessoryHiding)

- (id)inputAccessoryView {
    return nil;
}
- (void)removeInputAccessoryView {
    
    UIView *targetView;
    for (UIView *view in self.scrollView.subviews) {
        if([[view.class description] hasPrefix:@"WKContent"]) {
            targetView = view;
        }
    }
    if (!targetView) {
        return;
    }
    NSString *noInputAccessoryViewClassName = [NSString stringWithFormat:@"%@_NoInputAccessoryView", targetView.class.superclass];
    Class newClass = NSClassFromString(noInputAccessoryViewClassName);
    if(newClass == nil) {
        newClass = objc_allocateClassPair(targetView.class, [noInputAccessoryViewClassName cStringUsingEncoding:NSASCIIStringEncoding], 0);
        if(!newClass) {
            return;
        }
        Method method = class_getInstanceMethod([self class], @selector(inputAccessoryView));
        class_addMethod(newClass, @selector(inputAccessoryView), method_getImplementation(method), method_getTypeEncoding(method));
        objc_registerClassPair(newClass);
    }
    object_setClass(targetView, newClass);
}

static void (*originalIMP)(id self, SEL _cmd, void* arg0, BOOL arg1, BOOL arg2, id arg3) = NULL;

void interceptIMP (id self, SEL _cmd, void* arg0, BOOL arg1, BOOL arg2, id arg3) {
    originalIMP(self, _cmd, arg0, TRUE, arg2, arg3);
}

-(void)wkWebViewShowKeybord {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class cls = NSClassFromString(@"WKContentView");
        SEL originalSelector = NSSelectorFromString(@"_startAssistingNode:userIsInteracting:blurPreviousNode:userObject:");
        Method originalMethod = class_getInstanceMethod(cls, originalSelector);
        IMP impOvverride = (IMP) interceptIMP;
        originalIMP = (void *)method_getImplementation(originalMethod);
        method_setImplementation(originalMethod, impOvverride);
    });
}



@end




