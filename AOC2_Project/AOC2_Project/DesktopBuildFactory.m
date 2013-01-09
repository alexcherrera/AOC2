//
//  DesktopBuildFactory.m
//  AOC2_Project
//
//  Created by Alexander Herrera on 1/8/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import "DesktopBuildFactory.h"

@implementation DesktopBuildFactory

+(DesktopBuildBase *)makeNewDesktop:(int)buildDesktop
{
	if (buildDesktop == INTERNAL)
	{
		return [[DesktopBuildInternal alloc] init];
	} else if (buildDesktop == ACCESSORIES)
	  {
		return[[DesktopBuildAccessories alloc] init];
	  } else if (buildDesktop ==SOFTWARE)
	    {
			return [[DesktopBuildAccessories alloc] init];
		}
	else return nil;
}

@end
