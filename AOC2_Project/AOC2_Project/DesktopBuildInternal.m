//
//  DesktopBuildInternal.m
//  AOC2_Project
//
//  Created by Alexander Herrera on 1/8/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import "DesktopBuildInternal.h"

@implementation DesktopBuildInternal

@synthesize towerBrands, motherBoardBrands, centralProcessingUnitBrands, powerSupplyUnitBrands, opticalDriveBrands, hardDriveBrands, randomAccessMemoryBrands, towerName1, towerName2, motherBoardName, centralProcessingUnitName, powerSupplyUnitName, opticalDriveName, randomAccessMemoryName;

-(id)init
{
	self = [super init];
	if (self != nil)
	{
		towerBrands = [[NSArray alloc] initWithObjects:@"Corsair", @"CM Storm", nil];
		NSLog(@"Brands are %@", [towerBrands objectAtIndex:0]);
		/*[self towerBrands];
		[self setDesktopComments: nil];
		[self setLowEndDesktopAvgPrice: 0];
		[self setCustomDesktopTotalPrice: 0];*/
	}
	return self;
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
