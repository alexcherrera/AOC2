//
//  OtherViewController.m
//  AOC2_Redo
//
//  Created by Alexander Herrera on 1/17/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import "OtherViewController.h"

@interface OtherViewController ()

@end

@implementation OtherViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
	self.view.backgroundColor = [UIColor blueColor];
	
	myInfo.text = @"Alexander Herrera";

    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)backClick:(id)sender
{
	[self dismissViewControllerAnimated: true completion: nil];
}
@end
