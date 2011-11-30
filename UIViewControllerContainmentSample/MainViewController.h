//
//  MainViewController.h
//  UIViewControllerContainmentSample1
//
//  Created by Peter Friese on 29.11.11.
//  Copyright (c) 2011 http://peterfriese.de. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleViewController.h"

@interface MainViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *leftView;
@property (strong, nonatomic) IBOutlet UIView *topRightView;
@property (strong, nonatomic) IBOutlet UIView *bottomRightView;

@property (strong, nonatomic) SampleViewController *leftController;
@property (strong, nonatomic) SampleViewController *topRightController;
@property (strong, nonatomic) SampleViewController *bottomRightController;

@end
