//
//  Created by Franky Wu on 2015/10/22.
//  Copyright © 2015年 FET. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerWithBtn : UIView <UIPickerViewDataSource,UIPickerViewDelegate>

- (void)addTargetForDoneButton:(id)target action:(SEL)action;

@property (nonatomic) NSInteger componentNum;
@property (nonatomic, retain) NSArray *rowData;
@property (nonatomic, assign) UIPickerView *picker;
@property (nonatomic, weak) NSString *choosedRowdata;

@property (nonatomic, assign) id doneTarget;
@property (nonatomic, assign) SEL doneSelector;

@property (nonatomic, weak) UIColor *btnColor;
@property (nonatomic, weak) UIColor *pickerColor;

@end
