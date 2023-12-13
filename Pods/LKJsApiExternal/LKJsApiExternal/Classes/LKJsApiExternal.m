//
//  LKJsApiExternalFramework.m
//  LKJsApiExternalFramework
//
//  Created by Jessica mini on 2023/12/11.
//

#import "LKJsApiExternal.h"

@interface LKJsApiExternal ()

@property (nonatomic,copy) NSMutableDictionary *pluginDic;
@property (nonatomic,strong)NSMutableArray *loadPluginArr;

@end

@implementation LKJsApiExternal

+ (LKJsApiExternal *)sharedLKJsApiExternal {
    static LKJsApiExternal *sharedLKJsApiExternal = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedLKJsApiExternal = [[self alloc] init];
    });
    return sharedLKJsApiExternal;
}


@end
