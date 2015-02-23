//
//  MenuViewController.m
//  PizarraDigital
//
//  Created by Albert on 23/1/15.
//  Copyright (c) 2015 Albert. All rights reserved.
//

#import "MenuViewController.h"
#import "PizarraViewController.h"
@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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


- (IBAction)pizarraButton:(id)sender {
    PizarraViewController *pizarra = [[PizarraViewController alloc]initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:pizarra animated:YES];

}
- (IBAction)bibliotecaButton:(id)sender {
}
@end
