//
//  DesktopBuildSoftware.h
//  AOC2_Project
//
//  Created by Alexander Herrera on 1/8/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DesktopBuildBase.h"

@interface DesktopBuildSoftware : DesktopBuildBase

//Arrays of the virus protection software:
@property NSArray * virusSoftware;
@property NSArray * operatingSystemSoftware;

//Strings of the Company name of the OS:
@property NSString * macCompany;
@property NSString * windowsCompany;

@property int avgVirusPrice;
@property int avgOperatingSystemPrice;

@end
