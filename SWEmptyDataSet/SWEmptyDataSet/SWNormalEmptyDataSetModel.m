//
//  SWNormalEmptyDataSetModel.m
//  SWExtension
//
//  Created by zhoushaowen on 2018/6/4.
//  Copyright © 2018年 yidu. All rights reserved.
//

#import "SWNormalEmptyDataSetModel.h"

@implementation SWNormalEmptyDataSetModel

- (instancetype)init {
    self = [super init];
    if(self){
        self.type = SWEmptyDataSetTypeLoading;
        self.sw_emptyDataSetShouldAnimateImageView = YES;
    }
    return self;
}

- (void)setType:(SWEmptyDataSetType)type {
    _type = type;
    switch (type) {
        case SWEmptyDataSetTypeLoading:
        {
            self.sw_imageForEmptyDataSet = [UIImage imageNamed:@"loading_imgBlue_78x78"];
            self.sw_imageTintColorForEmptyDataSet = [UIColor purpleColor];
            self.sw_titleForEmptyDataSet = nil;
            self.sw_buttonTitleForEmptyDataSet = nil;
            CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform"];
            animation.fromValue = [NSValue valueWithCATransform3D:CATransform3DIdentity];
            animation.toValue = [NSValue valueWithCATransform3D: CATransform3DMakeRotation(M_PI_2, 0.0, 0.0, 1.0) ];
            animation.duration = 0.25;
            animation.cumulative = YES;
            animation.removedOnCompletion = NO;
            animation.repeatCount = MAXFLOAT;
            self.sw_imageAnimationForEmptyDataSet = animation;
        }
            break;
        case SWEmptyDataSetTypeNoData:
        {
            self.sw_imageForEmptyDataSet = [UIImage imageNamed:@"error"];
            self.sw_imageTintColorForEmptyDataSet = nil;
            self.sw_titleForEmptyDataSet = [[NSAttributedString alloc] initWithString:@"空空如也" attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14],NSForegroundColorAttributeName:[UIColor lightGrayColor]}];
            self.sw_buttonTitleForEmptyDataSet = nil;
            self.sw_imageAnimationForEmptyDataSet = nil;
        }
            break;
        case SWEmptyDataSetTypeNetworkError:
        {
            self.sw_imageForEmptyDataSet = [UIImage imageNamed:@"error"];
            self.sw_imageTintColorForEmptyDataSet = nil;
            self.sw_titleForEmptyDataSet = [[NSAttributedString alloc] initWithString:@"网络异常,请稍后再试!" attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14],NSForegroundColorAttributeName:[UIColor lightGrayColor]}];
            self.sw_buttonTitleForEmptyDataSet = [[NSAttributedString alloc] initWithString:@"重新加载" attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:16],NSForegroundColorAttributeName:[UIColor purpleColor]}];
            self.sw_imageAnimationForEmptyDataSet = nil;
        }
            break;
            
        default:
            break;
    }
    if(self.sw_reloadEmptyDataSetBlock){
        self.sw_reloadEmptyDataSetBlock();
    }
}

- (void)emptyDataSet:(UIScrollView *)scrollView didTapButton:(UIButton *)button {
    self.type = SWEmptyDataSetTypeLoading;
    [super emptyDataSet:scrollView didTapButton:button];
}



@end
