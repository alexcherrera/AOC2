//
//  DesktopBuildAccessories.h
//  AOC2_Project
//
//  Created by Alexander Herrera on 1/8/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DesktopBuildBase.h"

typedef enum {
	MONITOR = 0,
	SPEAKERS,
	CABLES,
	KEYBOARD,
	MOUSE
} accessoriesEnum;
@interface DesktopBuildAccessories : DesktopBuildBase
{
	int accessoriesEnum;
}

//Arrays of company brands for each piece:
@property NSArray * monitorBrands;
@property NSArray * speakerBrands;
@property NSArray * cablesBrands;
@property NSArray * keyboardBrands;
@property NSArray * mouseBrands;
//Average price range for each piece:
@property int monitorPrice;
@property int speakerPrice;
@property int cablesPrice;
@property int keyboardPrice;
@property int mousePrice;


@end
