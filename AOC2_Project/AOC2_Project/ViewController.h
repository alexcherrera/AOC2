//
//  ViewController.h
//  AOC2_Project
//
//  Created by Alexander Herrera on 1/8/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DesktopBuildFactory.h"

@interface ViewController : UIViewController
{
	//Application Title Label:
	UILabel * appTitleLabel;
	NSString * titleNameText;
	//Internal SubClass Labels:
	UILabel * desktopTypesLabel;
	UILabel * partsAndShortNameLabel;
	UILabel * internalClassCalculateLabel;
	//Accessories SubClass Labels:
	UILabel * externalAccessoriesLabel;
	UILabel * avgAccessoriesPriceLabel;
	//Accessories SubClass Labels:
	UILabel * virusLabel;
	UILabel * operatingSystemLabel;
	UILabel * avgSoftwarePriceLabel;
}
@end
