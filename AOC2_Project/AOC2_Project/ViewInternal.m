//
//  ViewInternal.m
//  AOC2_Project
//
//  Created by Alexander Herrera on 1/15/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import "ViewInternal.h"
#import "ViewController.h"

@interface ViewInternal ()

@end

@implementation ViewInternal

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
	NSLog(@"ViewInternal loaded");
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
