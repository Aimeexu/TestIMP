//
//  JSApi.h
//  TFBank
//
//  Created by Liu Fei on 2019/9/5.
//  Copyright © 2019 TFB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <LKJsApiExternal/dsbridge.h>
NS_ASSUME_NONNULL_BEGIN


@interface JSApi : NSObject
@property  (nonatomic,weak) UIViewController * viewController;
-(instancetype) initWithContext:(UIViewController * _Nonnull) context;
@end

@interface JSRequestApi : NSObject
@property  (nonatomic,copy) NSString * interfaceName;
@property  (nonatomic,copy) NSString * actionName;
@property  (nonatomic,copy) NSDictionary * params;
@end

@interface JSResponseApi : NSObject
@property  (nonatomic,assign) int  code;
@property  (nonatomic,copy) NSString * msg;
@property  (nonatomic,copy) NSDictionary *data;


-(instancetype) initWithStatus:( NSString * _Nonnull) status
                       message:(NSString * _Nullable) message
                         value:(id _Nullable) value;
@end

NS_ASSUME_NONNULL_END
