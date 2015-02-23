//
//  RegistrarViewController.m
//  PizarraDigital
//
//  Created by Albert on 12/1/15.
//  Copyright (c) 2015 Albert. All rights reserved.
//

#import "RegistrarViewController.h"
#import "ViewController.h"
#import "MenuViewController.h"

@interface RegistrarViewController ()

@end

@implementation RegistrarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self placeholderColors];
}

-(void) placeholderColors{
    UIColor *color = [UIColor colorWithRed:107.0/255.0 green:107.0/255.0 blue:107.0/255.0 alpha:1.0];
    
    self.Nombre.attributedPlaceholder =
    [[NSAttributedString alloc]
     initWithString:self.Nombre.placeholder
     attributes:@{NSForegroundColorAttributeName:color}];
    
    self.apellido.attributedPlaceholder =
    [[NSAttributedString alloc]
     initWithString:self.apellido.placeholder
     attributes:@{NSForegroundColorAttributeName:color}];
    
    self.email.attributedPlaceholder =
    [[NSAttributedString alloc]
     initWithString:self.email.placeholder
     attributes:@{NSForegroundColorAttributeName:color}];
    
    self.phone.attributedPlaceholder =
    [[NSAttributedString alloc]
     initWithString:self.phone.placeholder
     attributes:@{NSForegroundColorAttributeName:color}];
    
    self.password.attributedPlaceholder =
    [[NSAttributedString alloc]
     initWithString:self.password.placeholder
     attributes:@{NSForegroundColorAttributeName:color}];
    
    self.repeatpassword.attributedPlaceholder =
    [[NSAttributedString alloc]
     initWithString:self.repeatpassword.placeholder
     attributes:@{NSForegroundColorAttributeName:color}];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)validarButton:(id)sender {
}
@end
