//
//  ViewController.m
//  EventPlannerFixApp
//
//  Created by Alexander Herrera on 1/29/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import "ViewController.h"
#import "AddEventViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//Synthesize each to have for getter and setters:
@synthesize datePlanner, savedViewEvents;
@synthesize rightSwipeLabel = _rightSwipeLabel;
@synthesize rightSwipe = _rightSwipe;

//Getter method for the rightSwipeLabel:
- (UILabel *)rightSwipeLabel
{
	return _rightSwipeLabel;
}
//Setter method for the rightSwipeLabel:
- (void)setRightSwipeLabel:(UILabel *)rightSwipeLabel
{
	_rightSwipeLabel = rightSwipeLabel;
}
//Getter method for the rightSwipe:
- (UISwipeGestureRecognizer *)rightSwipe
{
	return _rightSwipe;
}
//Setter method for the rightSwipe:
- (void)setRightSwipe:(UISwipeGestureRecognizer *)rightSwipe
{
	_rightSwipe = rightSwipe;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
	//Right Swipe:
	_rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swiped:)];
	//This is going to say which direction its going to be:
	_rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
	[_rightSwipeLabel addGestureRecognizer:_rightSwipe];//Attachs the gesture to this label.
	
	//Left Swiper:
	
}

- (void)viewDidAppear:(BOOL)animated
{
	NSUserDefaults * appearSavedDefaults = [NSUserDefaults standardUserDefaults];
	if (appearSavedDefaults != nil)
	{
		NSString * savedString = [appearSavedDefaults objectForKey:@"Text View"];
		savedViewEvents.text = savedString;
		
	}
	[super viewDidAppear:animated];
}

- (void)swiped:(UISwipeGestureRecognizer *)swipeRecognizer
{
	if (swipeRecognizer.direction == UISwipeGestureRecognizerDirectionRight)
	{
		NSLog(@"add1");
		//Init the second view and allowing the button when clicked to go to the second view:
		AddEventViewController * addEventViewController = [[AddEventViewController alloc] initWithNibName: @"AddEventViewController" bundle:nil];
		if (addEventViewController != nil)
		{
			//This lets addEventViewController know that ViewController exist:
			addEventViewController.delegate = self;//self means what object will be receiving the messages from the addEventViewController:
			NSLog(@"add2");
			[self presentViewController:addEventViewController animated:YES completion:nil];
		}
	}
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)saveButton:(id)sender
{
	//To save the information in the textView:
	NSUserDefaults * saveDefaults = [NSUserDefaults standardUserDefaults];
	if (saveDefaults != nil)
	{
		NSString * stringTxtView = savedViewEvents.text;
		//Set to the default:
		[saveDefaults setObject:stringTxtView forKey:@"Text View"];
		//Saving the information:
		[saveDefaults synchronize];
	}
}

- (void)showSavedInfoTxt:(NSString *)savedInfoTxt
{

	NSString * appendString = [NSString stringWithFormat: @"\n %@", savedInfoTxt];

	savedViewEvents.text = [savedViewEvents.text stringByAppendingString:appendString];
}

- (void)savedInfoDateTime:(NSString *)savedInfoDateTime
{
	NSString * appendString = [NSString stringWithFormat: @"\n %@", savedInfoDateTime];



	savedViewEvents.text = [savedViewEvents.text stringByAppendingString:appendString];
}

@end