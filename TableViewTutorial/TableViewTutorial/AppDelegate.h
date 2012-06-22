//
//  AppDelegate.h
//  TableViewTutorial
//
//  Created by Rikza Azriyan's MacBook Pro on 6/22/12.
//  Copyright (c) 2012 Rikza Azriyan's MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>


@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINavigationController *navigationController;
@property (strong, nonatomic) MainViewController *mainViewController;

@end
