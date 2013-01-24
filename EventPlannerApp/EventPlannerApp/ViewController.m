//
//  ViewController.m
//  EventPlannerApp
//
//  Created by Alexander Herrera on 1/22/13.
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
	//Init the second view and allowing the button when clicked to go to the second view:
	AddEventViewController * addEventViewController = [[AddEventViewController alloc] initWithNibName: @"AddEventViewController" bundle:nil];
	if (addEventViewController != nil)
	{
		//This lets addEventViewController know that ViewController exist:
		addEventViewController.delegate = self;//self means what object will be receiving the messages from the addEventViewController:
		NSLog(@"add1");
		[self presentViewController:addEventViewController animated:YES completion:nil];
		NSLog(@"add2");
	}
}

-(void)showSaved:(NSString *)savedInfoTxt
{
	savedViewEvents.text = savedInfoTxt;
	NSLog(@"%@", savedViewEvents.text);
}


@end
