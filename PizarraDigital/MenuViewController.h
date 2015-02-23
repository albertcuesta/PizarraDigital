//
//  MenuViewController.h
//  PizarraDigital
//
//  Created by Albert on 23/1/15.
//  Copyright (c) 2015 Albert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UIViewController
- (IBAction)pizarraButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *pizarrabutton;
@property (weak, nonatomic) IBOutlet UIButton *bibliotecaButton;
- (IBAction)bibliotecaButton:(id)sender;

@end
