//
//  ViewController.m
//  Test
//
//  Created by Jessica mini on 2023/12/8.
//

#import "ViewController.h"
#import <LKJsApiExternal/LKJsApiExternal.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *name;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    LKJsApiExternal *framwork = [LKJsApiExternal sharedLKJsApiExternal];
    JSRequestApi *api = [[JSRequestApi alloc] init];
    api.interfaceName = @"哈哈哈name";
    [framwork.container execute:self prams:api result:^(NSString * _Nullable result, BOOL complete) {
        self.name.text = result;
    }];
    

}


@end
