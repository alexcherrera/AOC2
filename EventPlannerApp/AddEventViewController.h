//
//  AddEventViewController.h
//  EventPlannerApp
//
//  Created by Alexander Herrera on 1/23/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol AddEvent <NSObject>

@required



- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField;        // return NO to disallow editing.

@end

@interface AddEventViewController : UIViewController <UITextFieldDelegate, UIPickerViewDelegate>

- (IBAction)saveEventInfoBtn:(id)sender;
- (IBAction)closeKeyboardBtn:(id)sender;

@end