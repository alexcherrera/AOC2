//
//  AddEventViewController.m
//  EventPlannerFixApp
//
//  Created by Alexander Herrera on 1/29/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//


#import "AddEventViewController.h"


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
	NSLog(@"In Add1");
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
	NSLog(@"inTextEdit");
	
	return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{	//Before it closes:
	NSLog(@"return");
	if (delegate != nil)
	{
		NSDateFormatter * formattingDate = [[NSDateFormatter alloc] init];
		//To get the current date:
		NSDate * currentDate = [NSDate date];
		//Now to set the minimun date:
		dateTime.minimumDate = currentDate;
		if (formattingDate != nil)
		{
			//Change the format of the date and time:
			[formattingDate setDateFormat:@"EEE, MMM d, yyyy h:mm a"];
			NSLog(@"the %@", formattingDate);
			stringDate = [formattingDate stringFromDate:dateShow];
		}
		if ([eventTextField.text isEqualToString:@""])
		{
			UIAlertView * noInputAlert = [[UIAlertView alloc] initWithTitle:@"No Event" message:@"Please enter an event:" delegate:self cancelButtonTitle:nil otherButtonTitles:@"ok", nil];
			[noInputAlert show];
		}
		else
		{

			//This is going to call back ViewController
			[delegate showSavedInfoTxt:textField.text];
			[self dismissViewControllerAnimated:YES completion:nil];
		}
		
	}
	//NSString * savedTxt = textField.text;
	//NSLog(@"%@", savedTxt);
	//

	return true;
}


- (IBAction)saveEventInfoBtn:(id)sender
{
	if (delegate != nil)
	{
		NSLog(@"save");
		
		NSDateFormatter * formattingDate = [[NSDateFormatter alloc] init];
		//To get the current date:
		NSDate * currentDate = [NSDate date];
		//Now to set the minimun date:
		dateTime.minimumDate = currentDate;
		if (formattingDate != nil)
		{
			//Change the format of the date and time:
			[formattingDate setDateFormat:@"EEE, MMM d, yyyy h:mm a"];
			NSLog(@"the %@", formattingDate);
			stringDate = [formattingDate stringFromDate:dateShow];
		}
		if ([eventTextField.text isEqualToString:@"Please enter event here!"])
		{
			UIAlertView * noInputAlert = [[UIAlertView alloc] initWithTitle:@"No Event" message:@"Please enter an event:" delegate:self cancelButtonTitle:nil otherButtonTitles:@"ok", nil];
			[noInputAlert show];
			NSLog(@"no");
		}
		else if (dateTime.minimumDate == [NSDate date])
		{
			UIAlertView * datePickerAlert = [[UIAlertView alloc] initWithTitle:@"No Event" message:@"Please enter an event:" delegate:self cancelButtonTitle:nil otherButtonTitles:@"ok", nil];
			[datePickerAlert show];
		}
		else
		{
			UIAlertView * yesInputAlert = [[UIAlertView alloc] initWithTitle:@"Saved" message:@"Your event has been saved:" delegate:self cancelButtonTitle:nil otherButtonTitles:@"ok", nil];
			[yesInputAlert show];
			NSLog(@"yes");
			//To display on the view:
			[delegate showSavedInfoTxt: eventTextField.text];
			[delegate savedInfoDateTime:stringDate];
			[self dismissViewControllerAnimated:YES completion:nil];
		}
	}
}

- (IBAction)closeKeyboardBtn:(id)sender
{
	if (closeButton.enabled == true)
	{
		if ([eventTextField.text isEqualToString:@""])
		{
			eventTextField.text = @"Please enter event here!";
			NSLog(@"Dont leave blank");
		}
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
	{
		//To get the date:
		dateShow = datePicker.date;
		NSLog(@"%@", [dateShow description]);
	}
}


@end
