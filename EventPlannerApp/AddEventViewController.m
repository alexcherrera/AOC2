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
	}
	NSString * savedTxt = textField.text;
	NSLog(@"%@", savedTxt);
	//[closeButton resignFirstResponder];
	[self dismissViewControllerAnimated:YES completion:nil];
	
	return true;
}


- (IBAction)saveEventInfoBtn:(id)sender
{
	if (sender == saveButton)
	{
		NSLog(@"save");
		ViewController * viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
		if (viewController != nil)
		{
		
			[self presentViewController:viewController animated:YES completion:nil];
		}
	}
}

- (IBAction)closeKeyboardBtn:(id)sender
{
	if (sender == closeButton)
	{
		NSLog(@"in close");
		NSString * saveTxt = eventTextField.text;
		NSLog(@"%@", saveTxt);
		[sender isFirstResponder];
	}
	
}

- (IBAction)dateTimePickerChg:(id)sender
{

}



@end
