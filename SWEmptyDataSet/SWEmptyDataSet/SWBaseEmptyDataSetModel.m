//
//  SWBaseEmptyDataSetModel.m
//  SWExtension
//
//  Created by zhoushaowen on 2018/6/4.
//  Copyright © 2018年 yidu. All rights reserved.
//

#import "SWBaseEmptyDataSetModel.h"
#import <objc/runtime.h>

@implementation SWBaseEmptyDataSetModel

#pragma mark - DZNEmptyDataSetSource
- (UIImage *)imageForEmptyDataSet:(UIScrollView *)scrollView {
    return self.sw_imageForEmptyDataSet;
}

- (UIColor *)imageTintColorForEmptyDataSet:(UIScrollView *)scrollView {
    return self.sw_imageTintColorForEmptyDataSet;
}

- (CAAnimation *)imageAnimationForEmptyDataSet:(UIScrollView *)scrollView {
    return self.sw_imageAnimationForEmptyDataSet;
}

- (NSAttributedString *)titleForEmptyDataSet:(UIScrollView *)scrollView {
    return self.sw_titleForEmptyDataSet;
}

- (NSAttributedString *)buttonTitleForEmptyDataSet:(UIScrollView *)scrollView forState:(UIControlState)state {
    return self.sw_buttonTitleForEmptyDataSet;
}

- (CGFloat)verticalOffsetForEmptyDataSet:(UIScrollView *)scrollView {
    return self.sw_verticalOffsetForEmptyDataSet;
}

//自定义视图
//如果实现并发返回了一个View,那么自定义的图片和文字都不会显示了
- (UIView *)customViewForEmptyDataSet:(UIScrollView *)scrollView {
    return self.sw_customViewForEmptyDataSet;
}

#pragma mark - DZNEmptyDataSetDelegate
- (BOOL)emptyDataSetShouldBeForcedToDisplay:(UIScrollView *)scrollView {
    return self.sw_emptyDataSetShouldBeForcedToDisplay;
}

- (BOOL)emptyDataSetShouldAnimateImageView:(UIScrollView *)scrollView {
    return self.sw_emptyDataSetShouldAnimateImageView;
}

//没有数据的时候是否允许滑动
- (BOOL)emptyDataSetShouldAllowScroll:(UIScrollView *)scrollView {
    return self.sw_emptyDataSetShouldAllowScroll;
}

- (void)emptyDataSet:(UIScrollView *)scrollView didTapButton:(UIButton *)button {
    if(self.sw_didTapButtonBlock){
        self.sw_didTapButtonBlock();
    }
}


@end
