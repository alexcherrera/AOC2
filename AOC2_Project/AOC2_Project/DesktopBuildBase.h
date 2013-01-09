//
//  DesktopBuildBase.h
//  AOC2_Project
//
//  Created by Alexander Herrera on 1/8/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
	INTERNAL = 0,
	ACCESSORIES,
	SOFTWARE
} desktopEnum;

@interface DesktopBuildBase : NSObject
{
	int desktopEnum;
}

@property NSArray * desktopTypes;//Low, Middle, High as strings
@property NSString * desktopComments;//Personal comments toward machine
//Price ranges:
@property int * lowEndDesktopPrice;
@property int * middleEndDesktopPrice;
@property int * highEndDesktopPrice;

@end
