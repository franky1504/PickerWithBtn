//
//  ViewController.m
//  PickerWithToolbar
//
//  Created by i_feyuwu on 2015/10/22.
//  Copyright © 2015年 FET. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//@synthesize customPicker;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    CGFloat width = screenBounds.size.width;
    CGFloat height = screenBounds.size.height;
    
    customPicker = [[PickerWithBtn alloc] initWithFrame:CGRectMake(0, height*0.7, width, height*0.3)];
    customPicker.rowData = @[@"111",@"222",@"333",@"444",@"555",@"666",@"777",@"888",@"999",@"000"];
    customPicker.componentNum = 1;
    customPicker.pickerColor = [UIColor yellowColor];
    [customPicker addTargetForDoneButton:self action:@selector(donePressed)];
    [self.view addSubview:customPicker];
    customPicker.hidden = YES;
}

- (void)donePressed {
    NSLog(@"Done!");
    customPicker.hidden = YES;
    label.text = customPicker.choosedRowdata;
}

- (IBAction)showp:(id)sender {
    customPicker.hidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
