//
//  ViewController.m
//  calc1
//
//  Created by 貞清　敦 on 13/11/21.
//  Copyright (c) 2013年 University of kitakyushu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize countNumber;
@synthesize buttonNumber;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)inputNumber1:(id)sender {
    self.buttonNumber=1;
    [self labelOutput];
}

- (IBAction)inputNumber2:(id)sender {
    self.buttonNumber=2;
    [self labelOutput];
}

-(void)labelOutput{
    self.countNumber=(self.countNumber*10)+self.buttonNumber;
    NSString*print=[[NSString alloc]initWithFormat:@"%d",self.countNumber];
                    self.numberOutput.text=print;
}
@end
