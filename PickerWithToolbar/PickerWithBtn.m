//
//  Created by Franky Wu on 2015/10/22.
//  Copyright © 2015年 FET. All rights reserved.
//

#import "PickerWithBtn.h"

@implementation PickerWithBtn
@synthesize doneSelector,doneTarget;
@synthesize btnColor,pickerColor;
@synthesize picker,componentNum,rowData,choosedRowdata;

#define toolbarHeight 40
- (id)initWithFrame:(CGRect)frame{
    if ((self = [super initWithFrame: frame])) {
        //Toolbar
        UIToolbar *keyboardToolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, toolbarHeight)];
        keyboardToolbar.barStyle = UIBarStyleDefault;
        keyboardToolbar.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        
        //Button
        UIBarButtonItem *space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
        UIBarButtonItem *doneBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(doneTyping)];
        doneBtn.tintColor = btnColor;
        [keyboardToolbar setItems:@[space,doneBtn] animated:NO];
        [self addSubview:keyboardToolbar];
        
        //Pickerview
        UIPickerView *pickerview = [[UIPickerView alloc] initWithFrame:CGRectMake(0, toolbarHeight, frame.size.width, frame.size.height -toolbarHeight)];
        pickerview.backgroundColor = pickerColor;
        pickerview.delegate = self;
        pickerview.dataSource = self;
        pickerview.showsSelectionIndicator = YES;
        [self addSubview:pickerview];
        
        picker = pickerview;
        picker.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleBottomMargin;
        
        self.autoresizesSubviews = YES;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleBottomMargin;
        
        choosedRowdata = [rowData objectAtIndex:0];
    }
    return self;
}

- (void)doneTyping {
    if (doneTarget) {
        [doneTarget performSelector:doneSelector withObject:nil afterDelay:0];
    }
}

- (void)addTargetForDoneButton:(id)target action:(SEL)action {
    doneTarget = target;
    doneSelector = action;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return componentNum;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [rowData count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [rowData objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    choosedRowdata = [rowData objectAtIndex:row];
}
@end
