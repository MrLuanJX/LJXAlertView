//
//  ViewController.m
//  LJXAlertView
//
//  Created by 栾金鑫 on 2019/7/26.
//  Copyright © 2019年 栾金鑫. All rights reserved.
//

#import "ViewController.h"
#import "LJXAlertView.h"

@interface ViewController ()

@property (nonatomic , strong) UIButton * alertShowBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self addBtn];
}

- (void) addBtn {
    [self.view addSubview: self.alertShowBtn];
    [self.alertShowBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo([super view]);
        make.width.mas_equalTo ([super view].mas_width).multipliedBy (0.5);
        make.height.mas_equalTo (HPFit(40));
    }];
}

- (UIButton *)alertShowBtn {
    if (!_alertShowBtn) {
        _alertShowBtn = [UIButton new];
        [_alertShowBtn setTitle:@"弹出" forState:UIControlStateNormal];
        [_alertShowBtn setTitleColor:kSetUpCololor(61, 121, 263, 1.0) forState:UIControlStateNormal];
        [_alertShowBtn addTarget:self action:@selector(alertShowAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _alertShowBtn;
}


- (void) alertShowAction {
    LJXAlertView * alertView = [LJXAlertView new];
    alertView.dataArray = [NSMutableArray arrayWithObjects:@"五星好评",@"我要吐槽",@"残忍拒绝", nil];
    [alertView show];
}

@end
