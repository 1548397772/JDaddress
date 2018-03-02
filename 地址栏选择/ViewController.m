//
//  ViewController.m
//  地址栏选择
//
//  Created by BJyhc on 2018/3/1.
//  Copyright © 2018年 com.baojian. All rights reserved.
//

#import "ViewController.h"
#import "AddressPickerView.h"
@interface ViewController ()
@property (strong , nonatomic)AddressPickerView *adPickerView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    _adPickerView = [AddressPickerView shareInstance];
    [_adPickerView showAddressPickView];
    [self.view addSubview:_adPickerView];
    
    _adPickerView.block = ^(NSString *province,NSString *city,NSString *district) {
        NSLog(@"%@",district);
    };
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
