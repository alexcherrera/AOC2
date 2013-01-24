 //
//  ViewController.h
//  EventPlannerApp
//
//  Created by Alexander Herrera on 1/22/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventViewController.h"

@interface ViewController : UIViewController <AddEvent>
//Property's of each Outlet UI element:
@property (weak, nonatomic) IBOutlet UILabel *datePlanner;
@property (weak, nonatomic) IBOutlet UITextView *savedViewEvents;
@property (weak, nonatomic) IBOutlet UIButton *addEventButton;

//Action taking place when the add button is clicked:
- (IBAction)addEvtBtn:(id)sender;

@end
