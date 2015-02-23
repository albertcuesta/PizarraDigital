//
//  PizarraViewController.h
//  PizarraDigital
//
//  Created by Albert on 25/1/15.
//  Copyright (c) 2015 Albert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PizarraViewController : UIViewController
@property CGPoint ultimoPunto;


@property CGFloat red;
@property CGFloat blue;
@property CGFloat green;
//variables cgfloat que tengan decimales para el lapiz
@property CGFloat grosor;
@property CGFloat opacidad;


@property (strong, nonatomic) IBOutlet UIImageView *zonaDibujo;

- (IBAction)lapiz_dibujar:(id)sender;

- (IBAction)goma_borrar:(id)sender;

@end
