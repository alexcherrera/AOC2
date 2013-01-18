//
//  ViewController.h
//  AOC2_Redo
//
//  Created by Alexander Herrera on 1/17/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import <UIKit/UIKit.h>

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
	IBOutlet UIButton * calculateButton;
	IBOutlet UILabel * textClassLabel;
	IBOutlet UIStepper * clickStep;
	IBOutlet UITextField * choosenPackagesTxtFld;
	IBOutlet UIButton * secondView;
	
	
	NSArray * theTowerCaseParts;
	int recentValue;
}


-(IBAction)onClick:(id)sender;

-(IBAction)clickStepper:(id)sender;

-(IBAction)changeSegment:(id)sender;

-(IBAction)aboutInfo:(id)sender;

@end
