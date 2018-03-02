//
//  AddressPickerView.h
//  地址栏选择
//
//  Created by BJyhc on 2018/3/1.
//  Copyright © 2018年 com.baojian. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^addressBlock)(NSString *provience,NSString *city,NSString *district);;

@interface AddressPickerView : UIView<UIPickerViewDelegate,UIPickerViewDataSource>
@property(nonatomic,copy)addressBlock block;
@property(nonatomic,assign) BOOL currentPickState;
+(instancetype)shareInstance;
- (void)showAddressPickView;
- (void)hiddenAddressPickView;
- (void)configDefaultWithProvience:(NSString *)provience city:(NSString *)city district:(NSString *)districe;
@end
