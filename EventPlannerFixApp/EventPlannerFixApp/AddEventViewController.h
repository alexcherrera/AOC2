//
//  AddEventViewController.h
//  EventPlannerFixApp
//
//  Created by Alexander Herrera on 1/29/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import <UIKit/UIKit.h>

//Going to be implemented in the ViewController:
@protocol AddEvent <NSObject>

@required
//To display the saved info.
- (void)showSavedInfoTxt:(NSString *)savedInfoTxt;
- (void)savedInfoDateTime:(NSString *)savedInfoDateTime;

@optional

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField;// return NO to disallow editing.

- (BOOL)textFieldShouldReturn:(UITextField *)textField;// called when 'return' key pressed. return NO to ignore.

@end

@interface AddEventViewController : UIViewController <UITextFieldDelegate, UIPickerViewDelegate>
{
	//A callback and lets the AddEventViewController know about the ViewController:
	id<AddEvent> delegate;
	NSString * savedEventInfo;
	NSString * stringDate;
	NSDate * dateShow;
}
@property (strong) id<AddEvent> delegate;
//Property's of each Outlet UI element:
@property (weak, nonatomic) IBOutlet UIButton * saveButton;
@property (weak, nonatomic) IBOutlet UIButton * closeButton;
@property (weak, nonatomic) IBOutlet UILabel * eventLabel;
@property (weak, nonatomic) IBOutlet UITextField * eventTextField;
@property (weak, nonatomic) IBOutlet UILabel * dateTimeLabel;
@property (weak, nonatomic) IBOutlet UIDatePicker * dateTime;

//Action taking place when the add button is clicked:
- (IBAction)saveEventInfoBtn:(id)sender;
- (IBAction)closeKeyboardBtn:(id)sender;
- (IBAction)dateTimePickerChg:(id)sender;


@end
