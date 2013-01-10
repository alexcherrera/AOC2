//
//  DesktopBuildBase.m
//  AOC2_Project
//
//  Created by Alexander Herrera on 1/8/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import "DesktopBuildBase.h"

@implementation DesktopBuildBase
//Makes the getters and setters:
@synthesize desktopTypes, desktopFunctionLow, desktopFunctionMiddle, desktopFunctionHigh, lowEndDesktopAvgPrice, middleEndDesktopAvgPrice, highEndDesktopAvgPrice, customDesktopAvgTotalPrice;

-(id)init
{
	self = [super init];
	if (self != nil)
	{
		[self setDesktopTypes: nil];
		[self setDesktopFunctionLow: nil];
		[self setDesktopFunctionMiddle: nil];
		[self setDesktopFunctionHigh: nil];
	}
	return self;
}
-(void)printDesktopTypes
{
	NSLog(@"There are three types of Desktops: %@, %@, %@.", [desktopTypes objectAtIndex:0], [desktopTypes objectAtIndex:1], [desktopTypes objectAtIndex:2]);
}
-(void)printDesktopFunction
{
	if(desktopFunctionLow == @"Checking email, reading, and suring the web.")
	{
		NSLog(@"Checking email, reading, and suring the web.");
	}
	if (desktopFunctionMiddle == @"Watching videos, little music editing, and sometimes playing video games.")
	{
		NSLog(@"Watching videos, little music editing, and sometimes playing video games.");
	}
	if (desktopFunctionHigh == @"High amounts of gaming time, creating and editing videos and musics, also for programming.")
	{
		NSLog(@"High amounts of gaming time, creating and editing videos and musics, also for programming.");
	}
}
-(void)printAvgPrice
{
	if (lowEndDesktopAvgPrice > 0 && lowEndDesktopAvgPrice < 400)
	{
		NSLog(@"This is a Low-End Desktop with a price of $%i.", lowEndDesktopAvgPrice);
	}
	if (middleEndDesktopAvgPrice >= 400 && middleEndDesktopAvgPrice < 700)
	{
		NSLog(@"This is a Middle-End Desktop with a price of $%i.", middleEndDesktopAvgPrice);
	}
	if (highEndDesktopAvgPrice >= 700)
	{
		NSLog(@"This is a High-End Desktop with a price of $%i.", highEndDesktopAvgPrice);
	}

}
//Calculation for overwrite:
-(void)calculateAvgTotalPrice
{
	[self setCustomDesktopAvgTotalPrice:((lowEndDesktopAvgPrice + middleEndDesktopAvgPrice + highEndDesktopAvgPrice) / 3 )];
		NSLog(@"The average price of the custom build Desktop is %d", customDesktopAvgTotalPrice);
}

@end
