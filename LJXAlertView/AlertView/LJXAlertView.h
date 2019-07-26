//
//  LJXAlertView.h
//  LJXAlertView
//
//  Created by 栾金鑫 on 2019/7/26.
//  Copyright © 2019年 栾金鑫. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LJXAlertView : UIView

@property (nonatomic , strong) NSMutableArray * dataArray;

+ (instancetype)showAlertView;

- (void)show ;

@end

NS_ASSUME_NONNULL_END
