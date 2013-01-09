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
	//Working with the base class:
	DesktopBuildInternal * internalDesktop = (DesktopBuildInternal *)[DesktopBuildFactory makeNewDesktop:0];
	if (internalDesktop !=nil)
	{
		NSArray * theDesktopTypes = [[NSArray alloc] initWithObjects:@"Low-End Desktops", @"Middle-End Desktops", @"High-End Desktop", nil];
		[internalDesktop setDesktopTypes: theDesktopTypes];
		[internalDesktop printDesktopTypes];
		NSArray * theDesktopFunctions = [[NSArray alloc] initWithObjects:@"Checking email, reading, and suring the web.", @"Watching videos, little music editing, and sometimes playing video games.", @"High amounts of gaming time, creating and editing videos and musics, also for programming.", nil];
		[internalDesktop setDesktopComments: theDesktopFunctions];
		[[theDesktopFunctions objectAtIndex:0] desktopFunction];
		[[theDesktopFunctions objectAtIndex:1] desktopFunction];
		[[theDesktopFunctions objectAtIndex:2] desktopFunction];
		
		//NSLog(@"They are %@", theDesktopTypes);
	}


	/*DesktopBuildBase * internal = (DesktopBuildBase *)[DesktopBuildFactory makeNewDesktop:INTERNAL];
	[internal calculateTotalPrice];
	DesktopBuildInternal *printTw = (DesktopBuildInternal *)[DesktopBuildFactory makeNewDesktop:TOWERCASE];
	[printTw printTowers];*/
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
