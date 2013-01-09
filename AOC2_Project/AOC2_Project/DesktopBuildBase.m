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
@synthesize desktopTypes, desktopFunction, desktopComments, lowEndDesktopAvgPrice, middleEndDesktopAvgPrice, highEndDesktopAvgPrice, customDesktopTotalPrice;

-(id)init
{
	self = [super init];
	if (self != nil)
	{
		[self setDesktopTypes: nil];
		[self setDesktopFunction: nil];
		[self setDesktopComments: nil];
		[self setLowEndDesktopAvgPrice: 0];
		[self setMiddleEndDesktopAvgPrice: 0];
		[self setHighEndDesktopAvgPrice: 0];
		[self setCustomDesktopTotalPrice: 20];
	}
	return self;
}
-(void)printDesktopTypes
{
	NSLog(@"There are three types of Desktops: %@, %@, %@.", [desktopTypes objectAtIndex:0], [desktopTypes objectAtIndex:1], [desktopTypes objectAtIndex:2]);
}
-(void)desktopTypesFunctions
{
		if([desktopTypes objectAtIndex:0] == @"Low-End Desktops")
		{
			NSLog(@"%@ are for %@", [desktopTypes objectAtIndex:0], [desktopFunction objectAtIndex:0]);
		} else if ([desktopTypes objectAtIndex:1] == @"Middle-End Desktops")
		  {
			NSLog(@"%@ are for %@", [desktopTypes objectAtIndex:1], [desktopFunction objectAtIndex:1]);
		  } else if ([desktopTypes objectAtIndex:2] == @"High-End Desktops")
		  {
			NSLog(@"%@ are for %@", [desktopTypes objectAtIndex:2], [desktopFunction objectAtIndex:2]);
		  }
}
-(void)calculateTotalPrice
{
	NSLog(@"The total price of the custom build Desktop is %d", customDesktopTotalPrice);
}

@end
