//
//  FirstViewController.m
//  NSNotificationCenter
//
//  Created by Larry Luk on 2017-11-12.
//  Copyright © 2017 Larry Luk. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIStepper *stepper;

@property (nonatomic, strong) NSDictionary *userInfo;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)stepperPressed:(UIStepper *)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"FirstViewControllerChanged"
                                                        object:self
                                                      userInfo:@{@"Stepper": @(self.stepper.value)}];

    
}


@end
