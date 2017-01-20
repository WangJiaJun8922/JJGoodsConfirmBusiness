//
//  JJGoodsConfirmViewController.h
//  JJGoodsConfirmBusiness
//
//  Created by 王家俊 on 2017/1/20.
//  Copyright © 2017年 王家俊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JJGoodsConfirmViewController : UIViewController

@property (nonatomic, copy) NSString *goodsId;

@property (nonatomic, copy) NSString *goodsName;

@property (nonatomic, copy) dispatch_block_t confirmComplete;

@end
