//
//  SWNormalEmptyDataSetModel.h
//  SWExtension
//
//  Created by zhoushaowen on 2018/6/4.
//  Copyright © 2018年 yidu. All rights reserved.
//

#import "SWBaseEmptyDataSetModel.h"

typedef NS_ENUM(NSUInteger, SWEmptyDataSetType) {
    SWEmptyDataSetTypeLoading,//加载中
    SWEmptyDataSetTypeNoData,//没有数据
    SWEmptyDataSetTypeNetworkError,//网络异常
};

@interface SWNormalEmptyDataSetModel : SWBaseEmptyDataSetModel

@property (nonatomic) SWEmptyDataSetType type;

@end
