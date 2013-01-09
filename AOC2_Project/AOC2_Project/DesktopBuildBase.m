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
@synthesize desktopTypes, desktopComments, lowEndDesktopAvgPrice, middleEndDesktopAvgPrice, highEndDesktopAvgPrice, customDesktopTotalPrice;

-(id)init
{
	self = [super init];
	if (self != nil)
	{
		[self setDesktopTypes: nil];
		[self setDesktopComments: nil];
		[self setLowEndDesktopAvgPrice: 0];
		[self setMiddleEndDesktopAvgPrice: 0];
		[self setHighEndDesktopAvgPrice: 0];
		[self setCustomDesktopTotalPrice: 0];
	}
	return self;
}

-(void)calculateTotalPrice
{
	NSLog(@"The total price of the custom build Desktop is @d", customDesktopTotalPrice);
}

@end
