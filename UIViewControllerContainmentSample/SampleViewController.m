//
//  SampleViewController.m
//  UIViewControllerContainmentSample1
//
//  Created by Peter Friese on 29.11.11.
//  Copyright (c) 2011 http://peterfriese.de. All rights reserved.
//

#import "SampleViewController.h"

@implementation SampleViewController

@synthesize color = _color;
@synthesize secondaryColor = _secondaryColor;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [[self view] setBackgroundColor:[UIColor purpleColor]];
    }
    NSLog(@"SampleViewController initWithNibName");
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    NSLog(@"SampleViewController didReceiveMemoryWarning");
    // Release any cached data, images, etc that aren't in use.
}

- (void)layoutForOrientation:(UIInterfaceOrientation)orientation
{
    if (UIInterfaceOrientationIsLandscape(orientation)) {
        [self.view setBackgroundColor:self.color];
    }
    else {
        [self.view setBackgroundColor:self.secondaryColor];
    }
}

- (void)updateLayout
{
    [self layoutForOrientation:[[UIApplication sharedApplication] statusBarOrientation]];
}

- (void)setColor:(UIColor *)newColor
{
    _color = newColor;
    [self updateLayout];
}

- (void)setSecondaryColor:(UIColor *)secondaryColor
{
    _secondaryColor = secondaryColor;
    [self updateLayout];    
}

#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    [super loadView];
    NSLog(@"SampleViewController loadView");
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self updateLayout];
    NSLog(@"SampleViewController viewDidLoad");    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    NSLog(@"SampleViewController viewDidUnload");    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    NSLog(@"SampleViewController shouldAutorotateToInterfaceOrientation");
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    NSLog(@"SampleViewController willRotateToInterfaceOrientation");
    [self layoutForOrientation:toInterfaceOrientation];
}

@end
