//
//  DesktopBuildAccessories.m
//  AOC2_Project
//
//  Created by Alexander Herrera on 1/8/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import "DesktopBuildAccessories.h"

@implementation DesktopBuildAccessories

@synthesize externalAccessories, monitorPrice, speakerPrice, cablesPrice, keyboardPrice, mousePrice;


-(id)init
{
	self = [super init];
	if (self != nil)
	{
		[self setExternalAccessories: nil];
		[self setMonitorPrice: 60];
		[self setSpeakerPrice: 30];
		[self setCablesPrice: 4];
		[self setKeyboardPrice: 10];
		[self setMousePrice: 8];
		
	}
	return self;
}

-(void)arrayPrintAccessories
{
	NSLog(@"%@", [externalAccessories objectAtIndex:0]);
	NSLog(@"%@", [externalAccessories objectAtIndex:1]);
	NSLog(@"%@", [externalAccessories objectAtIndex:2]);
	NSLog(@"%@", [externalAccessories objectAtIndex:3]);
	NSLog(@"%@", [externalAccessories objectAtIndex:4]);
}

-(void)intPrintAccessories
{
	NSLog(@"$%i", monitorPrice);
	NSLog(@"$%i", speakerPrice);
	NSLog(@"$%i", cablesPrice);
	NSLog(@"$%i", keyboardPrice);
	NSLog(@"$%i", mousePrice);
}

-(void)calculateAvgTotalPrice
{
	[self setCustomDesktopAvgTotalPrice:((monitorPrice + speakerPrice + cablesPrice + keyboardPrice + mousePrice) / 5)];
	NSLog(@"Extra cost of $%i based on an average", self.customDesktopAvgTotalPrice);
}

@end
