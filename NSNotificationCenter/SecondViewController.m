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

@property (nonatomic) NSInteger count;
@end

@implementation SecondViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(updateTextDisplay:)
                                                     name:@"FirstViewControllerChanged"
                                                   object:nil];

    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self _updateCountLabel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)updateTextDisplay:(NSNotification *)notification
{
    id stepperObject = notification.userInfo[@"Stepper"];
    if ([stepperObject isKindOfClass:[NSNumber class]]) {
        self.count = ((NSNumber *)stepperObject).integerValue;
    }
}

- (void)setCount:(NSInteger)count
{
    _count = count;
    [self _updateCountLabel];
}

- (void)_updateCountLabel
{
    self.countLabel.text = @(self.count).stringValue;
}

@end
