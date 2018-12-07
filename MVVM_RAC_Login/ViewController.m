//
//  ViewController.m
//  MVVM_RAC_Login
//
//  Created by Y on 2018/12/7.
//  Copyright © 2018 YM. All rights reserved.
//

#import "ViewController.h"
#import "LoginVc.h"
@interface ViewController ()
/**  */
@property (nonatomic, strong) UIButton *loginBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setup];
    
}

- (void)setup {
    [self.view addSubview:self.loginBtn];
    
    [self.loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(50);
    }];
    
}

#pragma mark - getter & setter
-(UIButton *)loginBtn {
    if (!_loginBtn) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setBackgroundColor:[UIColor blueColor]];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [button setTitle:@"点击登录" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(goLoginVc) forControlEvents:UIControlEventTouchUpInside];
        _loginBtn = button;
    }
    return _loginBtn;
}

#pragma mark - event response
- (void)goLoginVc {
    [self presentViewController:[LoginVc new] animated:YES completion:nil];
}
@end
