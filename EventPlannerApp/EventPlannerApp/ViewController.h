 //
//  ViewController.h
//  EventPlannerApp
//
//  Created by Alexander Herrera on 1/22/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventViewController.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *datePlanner;
@property (weak, nonatomic) IBOutlet UITextView *savedViewEvents;

- (IBAction)addEvtBtn:(id)sender;

@end
