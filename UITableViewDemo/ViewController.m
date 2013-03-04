//
//  ViewController.m
//  UITableViewDemo
//
//  Created by Guilherme Mogames on 3/4/13.
//  Copyright (c) 2013 Mogames. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,strong) NSArray *data;

@end

@implementation ViewController
static NSString *cellIdentifier;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.data = @[@"Apple",@"Banana",@"Peach",@"Grape",@"Strawberry",@"Watermelon"];
    
    cellIdentifier = @"rowCell";
    
    [self.myTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellIdentifier];
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.data count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.textLabel.text = [self.data objectAtIndex:indexPath.row];
    
    return cell;
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Hungry?" message:[NSString stringWithFormat:@"I'm hungry, I think I'll eat some %@",[self.data objectAtIndex:indexPath.row]] delegate:self cancelButtonTitle:@"guilmo.com" otherButtonTitles:nil];
    [message show];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
