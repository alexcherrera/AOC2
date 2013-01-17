//
//  ViewController.m
//  AOC2_Redo
//
//  Created by Alexander Herrera on 1/17/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import "ViewController.h"
#import "OtherViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
	
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)onClick:(id)sender
{
	//ViewInternal init:
	OtherViewController * viewInternal = [[OtherViewController alloc] initWithNibName:@"OtherViewController" bundle:nil];
	
	//ViewAccessories init:
	OtherViewController * viewAccessories = [[OtherViewController alloc] initWithNibName:@"OtherViewController" bundle:nil];
	//ViewSoftware init:
	OtherViewController * viewSoftware = [[OtherViewController alloc] initWithNibName:@"OtherViewController" bundle:nil];
	
	//Display buttons being enabled:
	UIButton * displayButton = (UIButton *) sender;
	if (displayButton != nil)
	{
		if (displayButton.tag == 0)
		{
			//Checking if not equal to nil:
			if (viewInternal != nil)
			{
				NSLog(@"internal");
			//Enable or diable the button:
				internalButton.enabled = false;//Picked by user
				accessoriesButton.enabled = true;
				softwareButton.enabled = true;
			
				internalButton.alpha = 0.5;
				accessoriesButton.alpha = 1.0;
				softwareButton.alpha = 1.0;
				NSLog(@"Internal button was pressed");
			}
		}
		 else if (displayButton.tag == 1)
		{
			if (viewAccessories != nil)
			{
				NSLog(@"accessories");
			
				internalButton.enabled = true;
				accessoriesButton.enabled = false;//Picked by user
				softwareButton.enabled = true;
			
				internalButton.alpha = 1.0;
				accessoriesButton.alpha = 0.5;
				softwareButton.alpha = 1.0;
				NSLog(@"Accessories button was pressed");
			}
		}
		else if (displayButton.tag == 2)
		{
			if (viewSoftware != nil)
			{
				NSLog(@"software");
			
				internalButton.enabled = true;
				accessoriesButton.enabled = true;
				softwareButton.enabled = false;//Picked by user
			
				internalButton.alpha = 1.0;
				accessoriesButton.alpha = 1.0;
				softwareButton.alpha = 0.5;
				NSLog(@"Software button was pressed");
			}
		}
	}

}

-(IBAction)clickStepper:(id)sender
{
	UIStepper * incrementStepControl = (UIStepper *) sender;
	if (incrementStepControl != nil)
	{
		if (internalButton.enabled == false && accessoriesButton.enabled == true && softwareButton.enabled == true)
		{
			int recentValue = incrementStepControl.value;
			textClassLabel.text = [NSString stringWithFormat:@"Packages: %d", recentValue];
		}
		else if (internalButton.enabled == true && accessoriesButton.enabled == false && softwareButton.enabled == true)
		{
			int recentValue = incrementStepControl.value;
			textClassLabel.text = [NSString stringWithFormat:@"Packages: %d", recentValue];
		}
		else if (internalButton.enabled == true && accessoriesButton.enabled == true && softwareButton.enabled == false)
		{
			int recentValue = incrementStepControl.value;
			textClassLabel.text = [NSString stringWithFormat:@"Packages: %d", recentValue];
		}
	}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
