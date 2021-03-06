//
//  JJGoodsConfirmViewController.m
//  JJGoodsConfirmBusiness
//
//  Created by 王家俊 on 2017/1/20.
//  Copyright © 2017年 王家俊. All rights reserved.
//

#import "JJGoodsConfirmViewController.h"

@interface JJGoodsConfirmViewController ()

@property (nonatomic, strong) UIButton *sureButton;

@end

@implementation JJGoodsConfirmViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:self.sureButton];
    
    self.navigationItem.title = [NSString stringWithFormat:@"确认订单(%@)",self.goodsName];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.sureButton.frame = CGRectMake(0, 0, 100, 100);
    self.sureButton.center = self.view.center;
}

- (void)didClickSureButton:(UIButton *)button
{
    if (self.navigationController) {
        [self.navigationController popViewControllerAnimated:YES];
    }else{
        [self dismissViewControllerAnimated:YES completion:^{
            if (self.confirmComplete) {
                self.confirmComplete();
            }
        }];
    }
}

#pragma mark - getters
- (UIButton *)sureButton
{
    if (_sureButton == nil)
    {
        _sureButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_sureButton setTitle:@"立即下单" forState:UIControlStateNormal];
        [_sureButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _sureButton.backgroundColor = [UIColor yellowColor];
        [_sureButton addTarget:self action:@selector(didClickSureButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _sureButton;

}
@end
