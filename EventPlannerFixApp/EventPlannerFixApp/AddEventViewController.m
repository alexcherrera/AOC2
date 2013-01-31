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

@synthesize closeButton = _closeButton;
@synthesize eventLabel = _eventLabel;
@synthesize eventTextField = _eventTextField;
@synthesize dateTimeLabel = _dateTimeLabel;
@synthesize dateTime = _dateTime;
@synthesize delegate;
@synthesize swipeLeftLabel = _swipeLeftLabel;
@synthesize leftSwipe = _leftSwipe;

//Getter method for the closeButton:
- (UIButton *)closeButton
{
	return _closeButton;
}
//Setter method for the closeButton:
- (void)setCloseButton:(UIButton *)closeButton
{
	_closeButton = closeButton;
}

//Getter method for the eventLabel:
- (UILabel *)eventLabel
{
	return _eventLabel;
}
//Setter method for the eventLabel:
- (void)setEventLabel:(UILabel *)eventLabel
{
	_eventLabel = eventLabel;
}

//Getter method for the eventTextField:
- (UITextField *)eventTextField
{
	return _eventTextField;
}
//Setter method for the eventTextField:
- (void)setEventTextField:(UITextField *)eventTextField
{
	_eventTextField = eventTextField;
}

//Getter method for the dateTimeLabel:
- (UILabel *)dateTimeLabel
{
	return _dateTimeLabel;
}
//Setter method for the dateTimeLabel:
- (void)setDateTimeLabel:(UILabel *)dateTimeLabel
{
	_dateTimeLabel = dateTimeLabel;
}

//Getter method for the dateTime:
- (UIDatePicker *)dateTime
{
	return _dateTime;
}
//Setter method for the dateTime:
- (void)setDateTime:(UIDatePicker *)dateTime
{
	_dateTime = dateTime;
}

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
			_dateTime.minimumDate = currentDate;
			if (formattingDate != nil)
			{
				//Change the format of the date and time:
				[formattingDate setDateFormat:@"EEE, MMM d, yyyy h:mm a"];
				NSLog(@"the %@", formattingDate);
				stringDate = [formattingDate stringFromDate:dateShow];
			}
			if ([_eventTextField.text isEqualToString:@"Please enter event here!"])
			{
				UIAlertView * noInputAlert = [[UIAlertView alloc] initWithTitle:@"No Event" message:@"Please enter an event:" delegate:self cancelButtonTitle:nil otherButtonTitles:@"ok", nil];
				[noInputAlert show];
				NSLog(@"no");
			}
			if (_dateTime.minimumDate == [NSDate date])
			{
				UIAlertView * datePickerAlert = [[UIAlertView alloc] initWithTitle:@"No Event" message:@"Please enter an event:" delegate:self cancelButtonTitle:nil otherButtonTitles:@"ok", nil];
				[datePickerAlert show];
			}
			else
			{
				UIAlertView * yesInputAlert = [[UIAlertView alloc] initWithTitle:@"Saved" message:@"Your event has been saved:" delegate:self cancelButtonTitle:nil otherButtonTitles:@"ok", nil];
				[yesInputAlert show];
				savedEventInfo = _eventTextField.text;
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

- (IBAction)closeKeyboardBtn:(id)sender
{
	if (_closeButton.enabled == true)
	{
		if ([_eventTextField.text isEqualToString:@""])
		{
			_eventTextField.text = @"Please enter event here!";
			NSLog(@"Dont leave blank");
		}
		NSLog(@"in close");
		NSString * saveTxt = _eventTextField.text;
		NSLog(@"%@", saveTxt);
		[_eventTextField resignFirstResponder];
	}
	else if (_closeButton.tag == 0)
	{
		//To hide the keyboard:
		[_eventTextField resignFirstResponder];
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
