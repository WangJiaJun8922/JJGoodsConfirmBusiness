//
//  Target_JJGoodsConfirm.m
//  JJGoodsConfirmBusiness
//
//  Created by 王家俊 on 2017/1/20.
//  Copyright © 2017年 王家俊. All rights reserved.
//

#import "Target_JJGoodsConfirm.h"
#import "JJGoodsConfirmViewController.h"

@implementation Target_JJGoodsConfirm

- (UIViewController *)Action_ConfirmOrderViewController:(NSDictionary *)params
{
    JJGoodsConfirmViewController *confirmOrderVC = [[JJGoodsConfirmViewController alloc] init];
    confirmOrderVC.goodsId = params[@"goodsId"];
    confirmOrderVC.goodsName = params[@"goodsName"];
    confirmOrderVC.confirmComplete = params[@"completeBlock"];
    return confirmOrderVC;
}

@end
