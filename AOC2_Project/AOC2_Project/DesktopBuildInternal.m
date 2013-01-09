//
//  DesktopBuildInternal.m
//  AOC2_Project
//
//  Created by Alexander Herrera on 1/8/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import "DesktopBuildInternal.h"

@implementation DesktopBuildInternal

@synthesize towerCaseParts, towerName1, towerName2, motherBoardName, centralProcessingUnitName, powerSupplyUnitName, opticalDriveName, randomAccessMemoryName;

-(id)init
{
	self = [super init];
	if (self != nil)
	{
		
		[self setLowEndDesktopAvgPrice: 100];
		[self setMiddleEndDesktopAvgPrice: 500];
		[self setHighEndDesktopAvgPrice: 800];
	}
	return self;
}

-(void)towerCaseParts
{

}
/*-(NSArray *) towerBrands
{
	if (towerBrands != nil)
	{
		towerBrands = [[NSArray alloc] initWithObjects:@"Corsair", @"CM Storm", nil];
		NSLog(@"Brands are %@", [towerBrands objectAtIndex:0]);
	}
	return towerBrands;
}*/

@end
