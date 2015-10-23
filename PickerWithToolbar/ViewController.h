//
//  ViewController.h
//  PickerWithToolbar
//
//  Created by i_feyuwu on 2015/10/22.
//  Copyright © 2015年 FET. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PickerWithBtn.h"

@interface ViewController : UIViewController {
    PickerWithBtn *customPicker;
    IBOutlet UIView *v;
    IBOutlet UILabel *label;
}
//@property (nonatomic, retain) PickerWithBtn *customPicker;
//@property (weak, nonatomic) IBOutlet PickerWithBtn *customPicker;
@end

