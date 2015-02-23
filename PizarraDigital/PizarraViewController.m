//
//  PizarraViewController.m
//  PizarraDigital
//
//  Created by Albert on 25/1/15.
//  Copyright (c) 2015 Albert. All rights reserved.
//

#import "PizarraViewController.h"

@interface PizarraViewController ()

@end

@implementation PizarraViewController


- (void)viewDidLoad {
    //declaramos variables del archivo .h y le damos valor
    _red = 0.0/255.0;
    _blue = 0.0/255.0;
    _green = 255.0/255.0;
    
    _grosor = 5.0;
    _opacidad = 1.0;
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//touchesBegan
-(void)touchesBegan:(NSSet *)toques withEvent:(UIEvent *)event{
    //un objeto UITouch representa el movimiento de un dedo en la pantalla para un evento en particular
    UITouch *toque =[toques anyObject];
    
    //la variable ultimoPunto se inicializa en el punto de contacto actual (donde el dedo toca la pantalla)
    _ultimoPunto = [toque locationInView:self.view];
}


//se obtiene el punto de toque actual y luego dibujar una linea con CGContextAddLineToPoint de ultimoPunto al punto actual.
//produce una serie de lineas rectas, pero las lineas son lo suficientemente cortas que el resultado parece una curva suave.
//touchesMoved
-(void)touchesMoved:(NSSet *)toques withEvent:(UIEvent *)event{
    UITouch *toque = [toques anyObject];
    CGPoint puntoActual = [toque locationInView:self.view];
    
    //montamos la zona de dibujo
    UIGraphicsBeginImageContext(self.view.frame.size);
    [self.zonaDibujo.image drawInRect:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    
    //hacemos el from to (desde hasta)
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), _ultimoPunto.x, _ultimoPunto.y);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), puntoActual.x, puntoActual.y);
    
    //ajustamos el tamaño de nuestro lapiz: la opacidad y el color del trazo
    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);//kCGLineCapRound hace que la curva de los puntos sea mas redonda.
    CGContextSetLineWidth(UIGraphicsGetCurrentContext(), _grosor);
    CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), _red, _green, _blue, 1.0);
    CGContextSetBlendMode(UIGraphicsGetCurrentContext(), kCGBlendModeNormal); //mezcla

    //por ultimo, hacemos que se dibujen las lineas
    CGContextStrokePath(UIGraphicsGetCurrentContext());
    self.zonaDibujo.image = UIGraphicsGetImageFromCurrentImageContext();
    [self.zonaDibujo setAlpha:_opacidad];
    UIGraphicsEndImageContext();
    
    _ultimoPunto = puntoActual;
}
//touchesEnded


- (IBAction)lapiz_dibujar:(id)sender {
    
    UIButton * lapiz_dibujar = (UIButton *) sender;
    //
    switch (lapiz_dibujar.tag) {
        case 1:
            _red = 255.0/255.0;
            _green = 0.0/255.0;
            _blue=0.0/255.0;
            break;

    }

}

- (IBAction)goma_borrar:(id)sender {

    self.zonaDibujo.image= nil;

}
@end
