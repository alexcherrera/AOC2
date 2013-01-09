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
	DesktopBuildBase * researchDesktop = (DesktopBuildBase *)[DesktopBuildFactory makeNewDesktop:0];
	if (researchDesktop !=nil)
	{
		NSArray * theDesktopTypes = [[NSArray alloc] initWithObjects:@"Low-End Desktops", @"Middle-End Desktops", @"High-End Desktop", nil];
		[researchDesktop setDesktopTypes: theDesktopTypes];
		[researchDesktop printDesktopTypes];
		NSArray * theDesktopComments = [[NSArray alloc] initWithObjects:@"Checking email, reading, and suring the web.", @"Watching videos, little music editing, and sometimes playing video games.", @"High amounts of gaming time, creating and editing videos and musics, also for programming.", nil];
		[researchDesktop setDesktopComments: theDesktopComments];
		[[theDesktopComments objectAtIndex:0] desktopTypesComments];
		[[theDesktopComments objectAtIndex:1] desktopTypesComments];
		[[theDesktopComments objectAtIndex:2] desktopTypesComments];
		
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
