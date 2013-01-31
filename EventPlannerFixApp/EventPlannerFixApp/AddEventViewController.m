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

@synthesize closeButton, eventLabel, eventTextField, dateTimeLabel, dateTime, delegate;
@synthesize swipeLeftLabel = _swipeLeftLabel;
@synthesize leftSwipe = _leftSwipe;

//Getter method for the swipeLeftLabel:
- (UILabel *)swipeLeftLabel
{
	return _swipeLeftLabel;
}
//Setter method for the swipeLeftLabel:
- (void)setSwipeLeftLabel:(UILabel *)swipeLeftLabel
{
	_swipeLeftLabel = swipeLeftLabel;
}

//Getter method for the leftSwipe:
- (UISwipeGestureRecognizer *)leftSwipe
{
	return _leftSwipe;
}
//Setter method for the leftSwipe:
- (void)setLeftSwipe:(UISwipeGestureRecognizer *)leftSwipe
{
	_leftSwipe = leftSwipe;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
	{
		delegate = nil;
    }
    return self;
}

//The selector is called from the viewWillAppear:
- (void)swipedLeft:(UISwipeGestureRecognizer *)swipeLeftRecognizer
{
	//savedEventInfo = eventTextField.text;
	if (swipeLeftRecognizer.direction == UISwipeGestureRecognizerDirectionLeft)
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
			if (dateTime.minimumDate == [NSDate date])
			{
				UIAlertView * datePickerAlert = [[UIAlertView alloc] initWithTitle:@"No Event" message:@"Please enter an event:" delegate:self cancelButtonTitle:nil otherButtonTitles:@"ok", nil];
				[datePickerAlert show];
			}
			else
			{
				UIAlertView * yesInputAlert = [[UIAlertView alloc] initWithTitle:@"Saved" message:@"Your event has been saved:" delegate:self cancelButtonTitle:nil otherButtonTitles:@"ok", nil];
				[yesInputAlert show];
				savedEventInfo = eventTextField.text;
				[delegate showSavedInfoTxt: savedEventInfo];
				[delegate savedInfoDateTime: stringDate];
				[self dismissViewControllerAnimated:YES completion:nil];
			}
		}
	}
}

- (void)viewDidLoad
{
	NSLog(@"In Add1");
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewWillAppear:(BOOL)animated
{
	//Left Swipe:
	_leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipedLeft:)];
	//This is going to say which direction its going to be:
	_leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
	[_swipeLeftLabel addGestureRecognizer:_leftSwipe];//Attachs the gesture to this label.
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
