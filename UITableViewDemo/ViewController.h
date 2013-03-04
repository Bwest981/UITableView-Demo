//
//  ViewController.h
//  UITableViewDemo
//
//  Created by Guilherme Mogames on 3/4/13.
//  Copyright (c) 2013 Mogames. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end
