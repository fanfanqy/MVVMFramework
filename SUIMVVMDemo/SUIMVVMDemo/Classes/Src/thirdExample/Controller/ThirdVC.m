//
//  ThirdVC.m
//  MVVMFramework
//
//  Created by yuantao on 16/1/7.
//  Copyright © 2016年 momo. All rights reserved.
//

#import "ThirdVC.h"
#import "ThirdViewModel.h"
#import "ThirdViewManger.h"
#import "FirstVC.h"

@interface ThirdVC ()

@property (nonatomic, strong) ThirdViewManger *thirdViewManger;
@property (nonatomic, strong) ThirdViewModel *viewModel;

@end

@implementation ThirdVC

- (ThirdViewManger *)thirdViewManger {
    if (_thirdViewManger == nil) {
        _thirdViewManger = [[ThirdViewManger alloc]init];
    }
    return _thirdViewManger;
}
- (ThirdViewModel *)viewModel {
    if (_viewModel == nil) {
        _viewModel = [[ThirdViewModel alloc]init];
    }
    return _viewModel;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"MVVM Example";

    [self.thirdViewManger vm_handleViewMangerWithSuperView:self.view];
    [self.viewModel vm_getDataSuccessHandler:nil];
}

- (IBAction)clickBtnAction:(UIButton *)sender {
    self.thirdViewManger.vm_model = [self.viewModel getRandomData];
}


@end
