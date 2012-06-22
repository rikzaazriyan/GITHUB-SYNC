//
//  MainViewController.h
//  TableViewTutorial
//
//  Created by Rikza Azriyan's MacBook Pro on 6/22/12.
//  Copyright (c) 2012 Rikza Azriyan's MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) NSArray *bukuArray;

@end
