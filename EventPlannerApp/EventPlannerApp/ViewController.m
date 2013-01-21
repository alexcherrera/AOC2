//
//  ViewController.m
//  EventPlannerApp
//
//  Created by Alexander Herrera on 1/21/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
	self.view.backgroundColor = [UIColor blueColor];
	//Setting the UILabel text:
	datePlannerLabel.text = @"Date Planner";
	//Hiding the UITextView:
	textViewDisplay.hidden = YES;
	if (textViewDisplay.hidden == YES)
	{
		UILabel * txtInfoHere = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 60.0f, 320.0f, 150.0f)];
		if (txtInfoHere != nil)
		{
			txtInfoHere.text = @"Event information is added here once its saved!";
			txtInfoHere.backgroundColor = [UIColor grayColor];
			txtInfoHere.numberOfLines = 2;
			txtInfoHere.font = [UIFont fontWithName: @"Arial" size: 12];
			
			[self.view addSubview:txtInfoHere];
		}
	}
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClick:(id)sender
{
	
}
@end
