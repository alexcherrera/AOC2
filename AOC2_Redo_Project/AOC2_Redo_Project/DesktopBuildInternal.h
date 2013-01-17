//
//  DesktopBuildInternal.h
//  AOC2_Project
//
//  Created by Alexander Herrera on 1/8/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DesktopBuildBase.h"

@interface DesktopBuildInternal : DesktopBuildBase
{
	IBOutlet UILabel * moboLabel;
}
//Arrays of internal desktop parts brands for each piece:
@property NSArray * towerCaseParts;
//Other names used to represent pieces:
@property NSString * towerName1;
@property NSString * towerName2;
@property NSString * motherBoardName;
@property NSString * centralProcessingUnitName;
@property NSString * powerSupplyUnitName;
@property NSString * opticalDriveName;
@property NSString * hardDrive;
@property NSString * solidStateDrive;
@property NSString * randomAccessMemoryName;

-(void)towerCasePartandShortNames;



@end
