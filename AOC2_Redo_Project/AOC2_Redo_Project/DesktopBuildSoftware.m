//
//  DesktopBuildSoftware.m
//  AOC2_Project
//
//  Created by Alexander Herrera on 1/8/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import "DesktopBuildSoftware.h"

@implementation DesktopBuildSoftware

@synthesize virusSoftware, operatingSystemSoftware, macCompany, windowsCompany, avgVirusPrice, avgOperatingSystemPrice;


-(id)init
{
	self = [super init];
	if (self != nil)
	{
		[self setVirusSoftware: nil];
		[self setOperatingSystemSoftware: nil];
		[self setMacCompany: @"Apple"];
		[self setWindowsCompany: @"MicroSoft"];
		[self setAvgVirusPrice: 50];
		[self setAvgOperatingSystemPrice:100];
	}
	return self;
}

//-(void)

-(void)calculateAvgTotalPrice
{
	[self setCustomDesktopAvgTotalPrice:((avgVirusPrice + avgOperatingSystemPrice) / 2)];
	NSLog(@"Extra cost of $%i based on an average", self.customDesktopAvgTotalPrice);
}

@end
