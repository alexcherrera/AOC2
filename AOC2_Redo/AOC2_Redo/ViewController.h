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
	//Views UIButtons:
	IBOutlet UIButton * internalButton;
	IBOutlet UIButton * accessoriesButton;
	IBOutlet UIButton * softwareButton;
	IBOutlet UIButton * calculateButton;
	IBOutlet UILabel * textClassLabel;
	IBOutlet UIStepper * clickStep;
	IBOutlet UITextField * choosenPackagesTxtFld;
}


-(IBAction)onClick:(id)sender;

-(IBAction)clickStepper:(id)sender;


@end
