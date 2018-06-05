//
//  UIScrollView+SWEmptyDataSet.m
//  SWExtension
//
//  Created by zhoushaowen on 2018/6/4.
//  Copyright © 2018年 yidu. All rights reserved.
//

#import "UIScrollView+SWEmptyDataSet.h"
#import <objc/runtime.h>
#import "SWBaseEmptyDataSetModel.h"

@implementation UIScrollView (SWEmptyDataSet)

#pragma mark - Setter&Getter
- (void)setSw_emptyDataSetModel:(SWBaseEmptyDataSetModel *)sw_emptyDataSetModel {
    objc_setAssociatedObject(self, @selector(sw_emptyDataSetModel), sw_emptyDataSetModel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    __weak typeof(self) weakSelf = self;
    sw_emptyDataSetModel.sw_reloadEmptyDataSetBlock = ^{
        __strong typeof(weakSelf) strongSelf = weakSelf;
        [strongSelf reloadEmptyDataSet];
    };
    sw_emptyDataSetModel.sw_didTapButtonBlock = ^{
        __strong typeof(weakSelf) strongSelf = weakSelf;
        if(strongSelf.sw_reloadDataRequest){
            strongSelf.sw_reloadDataRequest();
        }
    };
    self.emptyDataSetSource = sw_emptyDataSetModel;
    self.emptyDataSetDelegate = sw_emptyDataSetModel;
    [self reloadEmptyDataSet];
}

- (SWBaseEmptyDataSetModel *)sw_emptyDataSetModel {
    return objc_getAssociatedObject(self, @selector(sw_emptyDataSetModel));
}

- (void)setSw_reloadDataRequest:(void (^)(void))sw_reloadDataRequest {
    objc_setAssociatedObject(self, @selector(sw_reloadDataRequest), sw_reloadDataRequest, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void (^)(void))sw_reloadDataRequest {
    return objc_getAssociatedObject(self, @selector(sw_reloadDataRequest));
}



@end
