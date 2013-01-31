//
//  ViewController.h
//  EventPlannerFixApp
//
//  Created by Alexander Herrera on 1/29/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "AddEventViewController.h"

@interface ViewController : UIViewController <AddEvent>
//Property's of each Outlet UI element:
@property (weak, nonatomic) IBOutlet UILabel *datePlanner;
@property (strong, nonatomic) IBOutlet UITextView *savedViewEvents;
@property (weak, nonatomic) IBOutlet UILabel *rightSwipeLabel;
//Gesture recognizer:
@property (nonatomic) UISwipeGestureRecognizer * rightSwipe;



- (IBAction)saveButton:(id)sender;//Save button.

@end
