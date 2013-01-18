//
//  ViewController.m
//  AOC2_Redo
//
//  Created by Alexander Herrera on 1/17/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import "ViewController.h"
#import "OtherViewController.h"
#import "DesktopBuildBase.h"
#import "DesktopBuildFactory.h"
#import "DesktopBuildInternal.h"
#import "DesktopBuildAccessories.h"
#import "DesktopBuildSoftware.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
	self.view.backgroundColor = [UIColor blueColor];
	//Title Label:
	/*appTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 5.0f, 310.0f, 50.0f)];
	if (appTitleLabel != nil)
	{
		titleNameText = @"Custom Desktops";
		appTitleLabel.backgroundColor = [UIColor grayColor];
		appTitleLabel.textColor = [UIColor whiteColor];
		appTitleLabel.text = titleNameText;
		appTitleLabel.textAlignment = NSTextAlignmentCenter;
	}*/
	//[self.view addSubview: appTitleLabel];
	//Working with the internal subclass:
	DesktopBuildInternal * internalDesktop = (DesktopBuildInternal *)[DesktopBuildFactory makeNewDesktop:INTERNAL];
	if (internalDesktop != nil)
	{	//Desktop Type:
		NSArray * theDesktopTypes = [[NSArray alloc] initWithObjects: @"Low-End Desktops", @"Middle-End Desktops", @"High-End Desktop", nil];
		[internalDesktop setDesktopTypes: theDesktopTypes];
		[internalDesktop printDesktopTypes];
		//Desktop Function Low-End:
		NSString * theDesktopFunctionLow = @"Checking email, reading, and suring the web.";
		[internalDesktop setDesktopFunctionLow:theDesktopFunctionLow];
		//Desktop Function Middle-End:
		NSString * theDesktopFunctionMiddle = @"Watching videos, little music editing, and sometimes playing video games.";
		[internalDesktop setDesktopFunctionMiddle:theDesktopFunctionMiddle];
		//Desktop Function High-End:
		NSString * theDesktopFunctionHigh = @"High amounts of gaming time, creating and editing videos and musics, also for programming.";
		[internalDesktop setDesktopFunctionHigh:theDesktopFunctionHigh];
		[internalDesktop printDesktopFunction];
		//Low-End Desktop Average Price:
		[internalDesktop printAvgPrice];
		//Tower/Case internal parts:
		theTowerCaseParts = [[NSArray alloc] initWithObjects: @"MotherBoard", @"Central Processing Unit", @"Power Supply Unit", @"Optical Drive", @"Hard Drive", @"Solid State Drive", @"Random Access Memory", @"Graphic's Card", @"Fan/Cooling System", @"Cables", nil];
		[internalDesktop setTowerCaseParts:theTowerCaseParts];
		[internalDesktop towerCasePartandShortNames];
		[internalDesktop calculateAvgTotalPrice];
		//Desktop type label for Low:
		desktopTypesLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 70.0f, 310.0f, 60.0f)];
		if (desktopTypesLabel != nil)
		{
			desktopTypesLabel.backgroundColor = [UIColor blackColor];
			desktopTypesLabel.textColor = [UIColor whiteColor];
			desktopTypesLabel.text = [NSString stringWithFormat: @"%@ are for %@ %@ are for %@ %@ are for %@", [theDesktopTypes objectAtIndex:0],theDesktopFunctionLow, [theDesktopTypes objectAtIndex:1],theDesktopFunctionLow, [theDesktopTypes objectAtIndex:2],theDesktopFunctionLow];
			desktopTypesLabel.textAlignment = NSTextAlignmentLeft;
			desktopTypesLabel.numberOfLines = 4;
			desktopTypesLabel.font = [UIFont fontWithName: @"Arial" size: 12];
		}
		//[self.view addSubview: desktopTypesLabel];
		//Internal parts that make the desktop:
		partsAndShortNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 140.0f, 310.0f, 80.0f)];
		if (partsAndShortNameLabel != nil)
		{
			partsAndShortNameLabel.backgroundColor = [UIColor blackColor];
			partsAndShortNameLabel.textColor = [UIColor whiteColor];
			partsAndShortNameLabel.text = [NSString stringWithFormat: @"The components for a desktop are: %@ (%@), %@(%@), %@(%@), %@(%@), %@(%@), %@(%@), %@(%@), %@, %@, and %@.", [theTowerCaseParts objectAtIndex:0], [internalDesktop motherBoardName], [theTowerCaseParts objectAtIndex:1], [internalDesktop centralProcessingUnitName], [theTowerCaseParts objectAtIndex:2], [internalDesktop powerSupplyUnitName], [theTowerCaseParts objectAtIndex:3], [internalDesktop opticalDriveName], [theTowerCaseParts objectAtIndex:4], [internalDesktop hardDrive], [theTowerCaseParts objectAtIndex:5], [internalDesktop solidStateDrive], [theTowerCaseParts objectAtIndex:6], [internalDesktop randomAccessMemoryName], [theTowerCaseParts objectAtIndex:7], [theTowerCaseParts objectAtIndex:8], [theTowerCaseParts objectAtIndex:9]];
			partsAndShortNameLabel.textAlignment = NSTextAlignmentLeft;
			partsAndShortNameLabel.numberOfLines = 5;
			partsAndShortNameLabel.font = [UIFont fontWithName: @"Arial" size: 12];
		}
		//[self.view addSubview: partsAndShortNameLabel];
		//The calculation Label for the internal SubClass:
		internalClassCalculateLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 230.0f, 310.0f, 20.0f)];
		if (internalClassCalculateLabel != nil)
		{
			internalClassCalculateLabel.backgroundColor = [UIColor blackColor];
			internalClassCalculateLabel.textColor = [UIColor whiteColor];
			internalClassCalculateLabel.text = [NSString stringWithFormat: @"The average amount for a custom desktop is $%d.", [internalDesktop customDesktopAvgTotalPrice]];
			internalClassCalculateLabel.textAlignment = NSTextAlignmentLeft;
			internalClassCalculateLabel.numberOfLines = 1;
			internalClassCalculateLabel.font = [UIFont fontWithName:@"Arial" size:12];
		}
		//[self.view addSubview: internalClassCalculateLabel];
	}
	//Working with the Accessories subclass:
	DesktopBuildAccessories * accessories = (DesktopBuildAccessories *)[DesktopBuildFactory makeNewDesktop:ACCESSORIES];
	if (accessories != nil)
	{
		//External Accessories:
		NSArray * theExternalAccessories = [[NSArray alloc] initWithObjects: @"Monitor", @"Speakers", @"Keyboard", @"Mouse", @"Cables",  nil];
		[accessories setExternalAccessories: theExternalAccessories];
		[accessories arrayPrintAccessories];
		[accessories intPrintAccessories];
		[accessories customDesktopAvgTotalPrice];
		[accessories calculateAvgTotalPrice];
		//External Accessories Label:
		externalAccessoriesLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 260.0f, 310.0f, 60.0f)];
		if (externalAccessoriesLabel != nil)
		{
			externalAccessoriesLabel.backgroundColor = [UIColor blackColor];
			externalAccessoriesLabel.textColor = [UIColor whiteColor];
			externalAccessoriesLabel.text = [NSString stringWithFormat: @"The accessories and there average prices are: %@ $%d, %@ $%d, %@ $%d, %@ $%d, and %@ $%d.", [theExternalAccessories objectAtIndex:0], [accessories monitorPrice], [theExternalAccessories objectAtIndex:1], [accessories speakerPrice], [theExternalAccessories objectAtIndex:2], [accessories cablesPrice], [theExternalAccessories objectAtIndex:3], [accessories keyboardPrice], [theExternalAccessories objectAtIndex:4], [accessories mousePrice]];
			externalAccessoriesLabel.textAlignment = NSTextAlignmentLeft;
			externalAccessoriesLabel.numberOfLines = 3;
			externalAccessoriesLabel.font = [UIFont fontWithName:@"Arial" size:12];
		}
		//[self.view addSubview: externalAccessoriesLabel];
	}
	//Working with the Software subclass:
	DesktopBuildSoftware * software = (DesktopBuildSoftware *)[DesktopBuildFactory makeNewDesktop:SOFTWARE];
	if (software != nil)
	{
		//Virus protection software array:
		NSArray * theVirusSoftware = [[NSArray alloc] initWithObjects: @"Norton", @"Barracuda", @"McAfee", @"Kaspersky", nil];
		[software setVirusSoftware: theVirusSoftware];
		for (int i = 0; i < [theVirusSoftware count]; i++)
		{
			NSLog(@"%@",[theVirusSoftware objectAtIndex:i]);
		}
		//Operating system software array:
		NSArray * theOperatingSystemSoftware = [[NSArray alloc] initWithObjects: @"Mac", @"Windows", @"Linux", nil];
		[software setOperatingSystemSoftware:theOperatingSystemSoftware];
		for (int o = 0; o < [theOperatingSystemSoftware count]; o++)
		{
			NSLog(@"%@",[theOperatingSystemSoftware objectAtIndex:o]);
		}
		[software calculateAvgTotalPrice];
		//Virus Software Label:
		virusLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 330.0f, 310.0f, 40.0f)];
		if (virusLabel != nil)
		{
			virusLabel.backgroundColor = [UIColor blackColor];
			virusLabel.textColor = [UIColor whiteColor];
			virusLabel.text = [NSString stringWithFormat: @"The virus protection software are: %@, %@, %@, and %@.", [theVirusSoftware objectAtIndex:0], [theVirusSoftware objectAtIndex:1], [theVirusSoftware objectAtIndex:2], [theVirusSoftware objectAtIndex:3]];
			virusLabel.textAlignment = NSTextAlignmentLeft;
			virusLabel.numberOfLines = 2;
			virusLabel.font = [UIFont fontWithName:@"Arial" size:12];
		}
		//[self.view addSubview: virusLabel];
		//Operating System Software Label:
		operatingSystemLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 380.0f, 310.0f, 40.0f)];
		if (operatingSystemLabel != nil)
		{
			operatingSystemLabel.backgroundColor = [UIColor blackColor];
			operatingSystemLabel.textColor = [UIColor whiteColor];
			operatingSystemLabel.text = [NSString stringWithFormat: @"The Operating System  software are: %@, %@, and %@.", [theVirusSoftware objectAtIndex:0], [theVirusSoftware objectAtIndex:1], [theVirusSoftware objectAtIndex:2]];
			operatingSystemLabel.textAlignment = NSTextAlignmentLeft;
			operatingSystemLabel.numberOfLines = 2;
			operatingSystemLabel.font = [UIFont fontWithName:@"Arial" size:12];
		}
	}
		//[self.view addSubview: operatingSystemLabel];
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
				//Setting the color effect when the button is clicked:
				internalButton.alpha = 0.5;
				accessoriesButton.alpha = 1.0;
				softwareButton.alpha = 1.0;
				NSLog(@"Internal button was pressed");
				//Inserts the text package in the text field:
				if (internalButton.enabled == false)
				{
					choosenPackagesTxtFld.text = @"Internal Packages";
				}
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
				//Setting the color effect when the button is clicked:
				internalButton.alpha = 1.0;
				accessoriesButton.alpha = 0.5;
				softwareButton.alpha = 1.0;
				NSLog(@"Accessories button was pressed");
				//Inserts the text package in the text field:
				if (accessoriesButton.enabled == false)
				{
					choosenPackagesTxtFld.text = @"Accessories Packages";
				}
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
				//Setting the color effect when the button is clicked:
				internalButton.alpha = 1.0;
				accessoriesButton.alpha = 1.0;
				softwareButton.alpha = 0.5;
				NSLog(@"Software button was pressed");
				//Inserts the text package in the text field:
				if (softwareButton.enabled == false)
				{
					choosenPackagesTxtFld.text = @"Software Packages";
				}

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
			recentValue = incrementStepControl.value;
			textClassLabel.text = [NSString stringWithFormat:@"Packages: %d", recentValue];
		}
		else if (internalButton.enabled == true && accessoriesButton.enabled == false && softwareButton.enabled == true)
		{
			recentValue = incrementStepControl.value;
			textClassLabel.text = [NSString stringWithFormat:@"Packages: %d", recentValue];
		}
		else if (internalButton.enabled == true && accessoriesButton.enabled == true && softwareButton.enabled == false)
		{
			recentValue = incrementStepControl.value;
			textClassLabel.text = [NSString stringWithFormat:@"Packages: %d", recentValue];
		}
	}
}

-(IBAction)changeSegment:(id)sender
{
	UISegmentedControl * segmentControl = (UISegmentedControl *)sender;
	if (segmentControl != nil)
	{
		int indexSegment = segmentControl.selectedSegmentIndex;
		NSLog(@"Your on index %i", indexSegment);
		switch (indexSegment)
		{
			case 0:
				self.view.backgroundColor = [UIColor blueColor];
				break;
			case 1:
				self.view.backgroundColor = [UIColor grayColor];
				break;
			case 2:
				self.view.backgroundColor = [UIColor greenColor];
		
		}
	}
}

-(IBAction)aboutInfo:(id)sender
{

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end