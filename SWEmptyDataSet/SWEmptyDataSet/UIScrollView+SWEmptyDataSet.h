//
//  UIScrollView+SWEmptyDataSet.h
//  SWExtension
//
//  Created by zhoushaowen on 2018/6/4.
//  Copyright © 2018年 yidu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SWBaseEmptyDataSetModel;

@interface UIScrollView (SWEmptyDataSet)

@property (nonatomic,strong) __kindof SWBaseEmptyDataSetModel *sw_emptyDataSetModel;
@property (nonatomic,strong) void(^sw_reloadDataRequest)(void);


@end


