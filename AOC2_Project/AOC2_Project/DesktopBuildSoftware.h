//
//  DesktopBuildSoftware.h
//  AOC2_Project
//
//  Created by Alexander Herrera on 1/8/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DesktopBuildBase.h"

//Security Software Enum
typedef enum {
	NORTON = 0,
	BARRACUDA,
	MCAFEE,
	KASPERSKY
}securityEnum;
//Operating Software Enum
typedef enum {
	MAC	= 0,
	WINDOWS,
	LINUX
}operatingSystemEnum;

@interface DesktopBuildSoftware : DesktopBuildBase
{
	int securityEnum;
	int operatingSystemEnum;
}
@end
