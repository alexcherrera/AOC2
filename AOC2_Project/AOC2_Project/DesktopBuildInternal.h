//
//  DesktopBuildInternal.h
//  AOC2_Project
//
//  Created by Alexander Herrera on 1/8/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DesktopBuildBase.h"

typedef enum {
	TOWERCASE = 0,
	MOTHERBOARD,
	CENTRALPROCESSINGUNIT,
	POWERSUPPLYUnit,
	OPTICALDRIVE,
	HARDDRIVE,
	RANDOMACCESSMEMORY
} internalEnum;

@interface DesktopBuildInternal : DesktopBuildBase
{
	int internalEnum;
}
//Arrays of company brands for each piece:
@property NSArray * towerBrands;
@property NSArray * motherBoardBrands;
@property NSArray * centralProcessingUnitBrands;
@property NSArray * powerSupplyUnitBrands;
@property NSArray * opticalDriveBrands;
@property NSArray * hardDriveBrands;
@property NSArray * randomAccessMemoryBrands;
//Other names used to represent pieces:
@property NSString * towerName1;
@property NSString * towerName2;
@property NSString * motherBoardName;
@property NSString * centralProcessingUnitName;
@property NSString * powerSupplyUnitName;
@property NSString * opticalDriveName;
@property NSString * randomAccessMemoryName;

-(void) printTowers;

@end