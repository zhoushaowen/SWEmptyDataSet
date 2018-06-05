//
//  SWEmptyDataSetController.m
//  SWExtension
//
//  Created by zhoushaowen on 2018/6/4.
//  Copyright © 2018年 yidu. All rights reserved.
//

#import "SWEmptyDataSetController.h"
#import <SWEmptyDataSet.h>

@interface SWEmptyDataSetController ()

@property (nonatomic,copy) NSArray *dataSource;

@end

@implementation SWEmptyDataSetController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.tableFooterView = [UIView new];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    self.tableView.sw_emptyDataSetModel = [SWNormalEmptyDataSetModel new];
    __weak typeof(self) weakSelf = self;
    self.tableView.sw_reloadDataRequest = ^{
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            weakSelf.dataSource = @[@"测试数据",@"测试数据",@"测试数据"];
            [weakSelf.tableView reloadData];
        });
    };
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        SWNormalEmptyDataSetModel *model = self.tableView.sw_emptyDataSetModel;
        model.type = SWEmptyDataSetTypeNetworkError;
    });
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = _dataSource[indexPath.row];
    
    return cell;
}


@end
