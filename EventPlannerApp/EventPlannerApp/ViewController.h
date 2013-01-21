//
//  ViewController.h
//  EventPlannerApp
//
//  Created by Alexander Herrera on 1/21/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
	IBOutlet UIButton *addEventButton;

	IBOutlet UILabel *datePlannerLabel;

	IBOutlet UITextView *textViewDisplay;
}
- (IBAction)buttonClick:(id)sender;

@end
