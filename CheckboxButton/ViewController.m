//
//  ViewController.m
//  CheckboxButton
//
//  Created by Haven on 4/2/14.
//  Copyright (c) 2014 LF. All rights reserved.
//

#import "ViewController.h"
#import "CBButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CBButton *b = [[CBButton alloc] initCheckboxAtPoint:CGPointMake(50, 50) withSideLabel:@"Hello Test"];
    [b addTarget:self action:@selector(checkBoxTrigger:) forControlEvents:UIControlEventTouchUpInside | UIControlEventTouchUpOutside];
    [self.view addSubview:b];
}

- (IBAction)checkBoxTrigger:(id)sender {
    UIButton *btn = (UIButton *)sender;
    btn.selected = !btn.selected;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
