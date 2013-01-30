//
//  ViewController.m
//  EventPlannerFixApp
//
//  Created by Alexander Herrera on 1/29/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import "ViewController.h"
#import "AddEventViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//Synthesize each to have for getter and setters:
@synthesize datePlanner, savedViewEvents, addEventButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addEvtBtn:(id)sender
{
	NSLog(@"add1");
	//Init the second view and allowing the button when clicked to go to the second view:
	AddEventViewController * addEventViewController = [[AddEventViewController alloc] initWithNibName: @"AddEventViewController" bundle:nil];
	if (addEventViewController != nil)
	{
		//This lets addEventViewController know that ViewController exist:
		addEventViewController.delegate = self;//self means what object will be receiving the messages from the addEventViewController:
		NSLog(@"add2");
		[self presentViewController:addEventViewController animated:YES completion:nil];
	}
}

- (void)showSavedInfoTxt:(NSString *)savedInfoTxt
{

	NSString * appendString = [NSString stringWithFormat: @"\n %@", savedInfoTxt];

	savedViewEvents.text = [savedViewEvents.text stringByAppendingString:appendString];
}

- (void)savedInfoDateTime:(NSString *)savedInfoDateTime
{
	NSString * appendString = [NSString stringWithFormat: @"\n %@", savedInfoDateTime];



	savedViewEvents.text = [savedViewEvents.text stringByAppendingString:appendString];
}

@end