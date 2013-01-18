//
//  DesktopBuildInternal.m
//  AOC2_Project
//
//  Created by Alexander Herrera on 1/8/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import "DesktopBuildInternal.h"

@implementation DesktopBuildInternal

@synthesize towerCaseParts, towerName1, towerName2, motherBoardName, centralProcessingUnitName, powerSupplyUnitName, opticalDriveName, hardDrive, solidStateDrive, randomAccessMemoryName;

-(id)init
{
	self = [super init];
	if (self != nil)
	{
		[self setLowEndDesktopAvgPrice: 300];
		[self setMiddleEndDesktopAvgPrice: 500];
		[self setHighEndDesktopAvgPrice: 800];
		[self setTowerName1: @"Tower"];
		[self setTowerName2: @"Case"];
		[self setMotherBoardName: @"MOBO"];
		[self setCentralProcessingUnitName: @"CPU"];
		[self setPowerSupplyUnitName: @"PSU"];
		[self setOpticalDriveName: @"CD/DVD"];
		[self setHardDrive: @"HDD"];
		[self setSolidStateDrive: @"SSD"];
		[self setRandomAccessMemoryName:@"RAM"];
	}
	return self;
}

-(void)towerCasePartandShortNames
{
	NSLog(@"The internal parts of the %@ (Also called %@) are of the following:", towerName1, towerName2);
	NSLog(@"%@ (%@).", [towerCaseParts objectAtIndex:0], motherBoardName);
	NSLog(@"%@ (%@).", [towerCaseParts objectAtIndex:1], centralProcessingUnitName);
	NSLog(@"%@ (%@).", [towerCaseParts objectAtIndex:2], powerSupplyUnitName);
	NSLog(@"%@ (%@).", [towerCaseParts objectAtIndex:3], opticalDriveName);
	NSLog(@"%@ (%@).", [towerCaseParts objectAtIndex:4], hardDrive);
	NSLog(@"%@ (%@).", [towerCaseParts objectAtIndex:5], solidStateDrive);
	NSLog(@"%@ (%@).", [towerCaseParts objectAtIndex:6], randomAccessMemoryName);
	NSLog(@"%@.", [towerCaseParts objectAtIndex:7]);
	NSLog(@"%@.", [towerCaseParts objectAtIndex:8]);
	NSLog(@"%@.", [towerCaseParts objectAtIndex:9]);
}


@end
