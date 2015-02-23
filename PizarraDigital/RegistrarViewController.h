//
//  RegistrarViewController.h
//  PizarraDigital
//
//  Created by Albert on 12/1/15.
//  Copyright (c) 2015 Albert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegistrarViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *Nombre;
@property (weak, nonatomic) IBOutlet UITextField *apellido;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *phone;
@property (weak, nonatomic) IBOutlet UITextField *repeatpassword;
@property (strong, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UIButton *validarButton;
- (IBAction)validarButton:(id)sender;


@end
