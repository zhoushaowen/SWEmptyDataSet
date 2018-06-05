//
//  SWBaseEmptyDataSetModel.h
//  SWExtension
//
//  Created by zhoushaowen on 2018/6/4.
//  Copyright © 2018年 yidu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIScrollView+EmptyDataSet.h>

@interface SWBaseEmptyDataSetModel : NSObject<DZNEmptyDataSetSource,DZNEmptyDataSetDelegate>

/**
 空数据图片
 */
@property (nonatomic,strong) UIImage *sw_imageForEmptyDataSet;

/**
 空数据图片的tintColor
 */
@property (nonatomic,strong) UIColor *sw_imageTintColorForEmptyDataSet;

/**
 空数据图片动画
 sw_imageAnimationForEmptyDataSet依赖于sw_emptyDataSetShouldAnimateImageView
 */
@property (nonatomic,strong) CAAnimation *sw_imageAnimationForEmptyDataSet;

/**
 自定义的空数据视图
 */
@property (nonatomic,strong) UIView *sw_customViewForEmptyDataSet;

/**
 空数据标题
 */
@property (nonatomic,copy) NSAttributedString *sw_titleForEmptyDataSet;

/**
 空数据按钮标题
 */
@property (nonatomic,copy) NSAttributedString *sw_buttonTitleForEmptyDataSet;

/**
 是否强制显示
 */
@property (nonatomic) BOOL sw_emptyDataSetShouldBeForcedToDisplay;

/**
 是否允许空数据图片动画
 */
@property (nonatomic) BOOL sw_emptyDataSetShouldAnimateImageView;

/**
 没有数据的时候是否允许滑动
 */
@property (nonatomic) BOOL sw_emptyDataSetShouldAllowScroll;

/**
 垂直方向的偏移量,上负下正,默认是0
 */
@property (nonatomic) CGFloat sw_verticalOffsetForEmptyDataSet;

@property (nonatomic,strong) void(^sw_reloadEmptyDataSetBlock)(void);
@property (nonatomic,strong) void(^sw_didTapButtonBlock)(void);



@end
