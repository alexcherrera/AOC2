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

-(void)viewWillAppear:(BOOL)animated
{
	/*[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showKeyboard) name:UIKeyboardWillShowNotification object:nil];
	
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(hideKeyboard) name:UIKeyboardWillHideNotification object:nil];*/
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
		[delegate showSaved:textField.text];
	}
	//NSString * savedTxt = textField.text;
	//NSLog(@"%@", savedTxt);
	//
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
			
			[delegate showSaved:eventTextField.text];
		}
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
		[eventTextField resignFirstResponder];
	}
	
}

- (IBAction)dateTimePickerChg:(id)sender
{

}



@end
