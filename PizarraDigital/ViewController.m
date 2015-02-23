//
//  ViewController.m
//  PizarraDigital
//
//  Created by Albert on 12/1/15.
//  Copyright (c) 2015 Albert. All rights reserved.
//

#import "ViewController.h"
#import "MenuViewController.h"
#import "RegistrarViewController.h"

@interface ViewController ()


@end

@implementation ViewController
@synthesize username;
@synthesize password;

- (void)viewDidLoad {
    [super viewDidLoad];
   
   UIColor *color = [UIColor colorWithRed:107.0/255.0 green:107.0/255.0 blue:107.0/255.0 alpha:1.0];
    
   /* self.username.attributedPlaceholder =
    [[NSAttributedString alloc]
     initWithString:self.username.placeholder
     attributes:@{NSForegroundColorAttributeName:color}];
    
    self.password.attributedPlaceholder =
    [[NSAttributedString alloc]
     initWithString:self.password.placeholder
     attributes:@{NSForegroundColorAttributeName:color}];
    */
    [self.navigationItem setHidesBackButton:YES];
}


-(void)viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

-(void)viewWillDisappear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)iniciasession:(id)sender {
    /*NSDictionary * params = @{@"email":self.username.text, @"password":self.password.text};*/
   /* MenuViewController *menu = [[MenuViewController alloc]initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:menu animated:YES];*/
    
}

- (IBAction)newcountButton:(id)sender {
}
@end
