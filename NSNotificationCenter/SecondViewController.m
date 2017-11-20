//
//  SecondViewController.m
//  NSNotificationCenter
//
//  Created by Larry Luk on 2017-11-12.
//  Copyright © 2017 Larry Luk. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UILabel *countLabel;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(updateTextDisplay:)
     name:@"FirstViewControllerChanged"
     object:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)updateTextDisplay:(NSNotification *)notification{
    self.countLabel.text = [notification.userInfo[@"Stepper"] stringValue];
}

@end
