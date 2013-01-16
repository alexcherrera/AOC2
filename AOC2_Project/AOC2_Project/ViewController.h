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
	//Software SubClass Labels:
	UILabel * virusLabel;
	UILabel * operatingSystemLabel;
	//Views UIButtons:
	IBOutlet UIButton * internalButton;
	IBOutlet UIButton * accessoriesButton;
	IBOutlet UIButton * softwareButton;
	//Views UIImages:
	IBOutlet UIImage * internalImage;
	IBOutlet UIImage * accessoriesImage;
	IBOutlet UIImage * softwareImage;
}

-(IBAction)onClick:(id)sender;

@end
