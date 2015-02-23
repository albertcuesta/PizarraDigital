//
//  ViewController.h
//  PizarraDigital
//
//  Created by Albert on 12/1/15.
//  Copyright (c) 2015 Albert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UIButton *startbutton;
@property (weak, nonatomic) IBOutlet UIButton *cuentabutton;

- (IBAction)iniciasession:(id)sender;
- (IBAction)newcountButton:(id)sender;



@end

