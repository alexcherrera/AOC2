//
//  AddEventViewController.m
//  EventPlannerApp
//
//  Created by Alexander Herrera on 1/23/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import "AddEventViewController.h"
#import "ViewController.h"


@interface AddEventViewController ()

@end

@implementation AddEventViewController

@synthesize saveButton, closeButton, eventLabel, eventTextField, dateTimeLabel, dateTime, delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
	{
		delegate = nil;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
	NSString * blank = @"";
	textField.text = blank;
	return true;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{	//Before it closes:
	if (delegate != nil)
	{
		//This is going to call back ViewController
		[delegate showSavedInfoTxt:textField.text];
	}
	//NSString * savedTxt = textField.text;
	//NSLog(@"%@", savedTxt);
	//
	[self dismissViewControllerAnimated:YES completion:nil];
	
	return true;
}


- (IBAction)saveEventInfoBtn:(id)sender
{
	if (delegate != nil)
	{
		NSLog(@"save");
	
		NSDateFormatter * formattingDate = [[NSDateFormatter alloc] init];
		if (formattingDate != nil)
		{
			//Change the format of the date and time:
			[formattingDate setDateFormat:@"EEE, MMM d, yyyys h:mm a"];
			NSLog(@"the %@", formattingDate);
			stringDate = [formattingDate stringFromDate:dateShow];
		}
			//To display on the view:
			[delegate showSavedInfoTxt: eventTextField.text];
			[delegate savedInfoDateTime:stringDate];
			[self dismissViewControllerAnimated:YES completion:nil];
	}
}

- (IBAction)closeKeyboardBtn:(id)sender
{
	if (closeButton.enabled == true)
	{
		NSLog(@"in close");
		NSString * saveTxt = eventTextField.text;
		NSLog(@"%@", saveTxt);
		[eventTextField resignFirstResponder];
	}
	else if (closeButton.tag == 0)
	{
		//To hide the keyboard:
		[eventTextField resignFirstResponder];
	}
	
}

- (IBAction)dateTimePickerChg:(id)sender
{
	UIDatePicker * datePicker = (UIDatePicker *) sender;
	
	if (datePicker != nil)
	{	//To get the date:
		dateShow = datePicker.date;
		NSLog(@"%@", [dateShow description]);
	}
}



@end
