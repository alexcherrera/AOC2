//
//  ViewController.m
//  AOC2_Project
//
//  Created by Alexander Herrera on 1/8/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import "ViewController.h"
#import "DesktopBuildFactory.h"
#import "DesktopBuildBase.h"
#import "DesktopBuildInternal.h"
#import "DesktopBuildAccessories.h"
#import "DesktopBuildSoftware.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
	//Working with the internal subclass:
	DesktopBuildInternal * internalDesktop = (DesktopBuildInternal *)[DesktopBuildFactory makeNewDesktop:INTERNAL];
	if (internalDesktop !=nil)
	{	//Desktop Type:
		NSArray * theDesktopTypes = [[NSArray alloc] initWithObjects:@"Low-End Desktops", @"Middle-End Desktops", @"High-End Desktop", nil];
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
		NSArray * theTowerCaseParts = [[NSArray alloc] initWithObjects:@"MotherBoard", @"Central Processing Unit", @"Power Supply Unit", @"Optical Drive", @"Hard Drive", @"Solid State Drive", @"Random Access Memory", @"Graphic's Card", @"Fan/Cooling System", @"Cables", nil];
		[internalDesktop setTowerCaseParts:theTowerCaseParts];
		[internalDesktop towerCasePartandShortNames];
	}
	//Working with the Accessories subclass:
	DesktopBuildAccessories * accessories = (DesktopBuildAccessories *)[DesktopBuildFactory makeNewDesktop:ACCESSORIES];
	if (accessories != nil)
	{
		//External Accessories:
		NSArray * theExternalAccessories = [[NSArray alloc] initWithObjects:@"Monitor", @"Speakers", @"Keyboard", @"Mouse", @"Cables",  nil];
		[accessories setExternalAccessories: theExternalAccessories];
		[accessories arrayPrintAccessories];
		[accessories intPrintAccessories];
	}
	
	
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
