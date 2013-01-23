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

@synthesize datePlanner, savedViewEvents;

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
	AddEventViewController * addEventViewController = [[AddEventViewController alloc] initWithNibName: @"AddEventViewController" bundle:nil];
	if (addEventViewController != nil)
	{
		[self presentViewController:addEventViewController animated:YES completion:nil];
	}
}
@end
