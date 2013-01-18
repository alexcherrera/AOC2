//
//  DesktopBuildAccessories.h
//  AOC2_Project
//
//  Created by Alexander Herrera on 1/8/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DesktopBuildBase.h"

@interface DesktopBuildAccessories : DesktopBuildBase

//Arrays of company brands for each piece:
@property NSArray * externalAccessories;
//Average price range for each piece:
@property int monitorPrice;
@property int speakerPrice;
@property int cablesPrice;
@property int keyboardPrice;
@property int mousePrice;

-(void)arrayPrintAccessories;
-(void)intPrintAccessories;

@end
