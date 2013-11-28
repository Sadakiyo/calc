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
@synthesize subtotal;
@synthesize calcFlug;

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
//数字ボタン
- (IBAction)inputNumber1:(id)sender {
    self.buttonNumber=1;
    [self labelOutput];
}

- (IBAction)inputNumber2:(id)sender {
    self.buttonNumber=2;
    [self labelOutput];
}

- (IBAction)inputNumber3:(id)sender {
    self.buttonNumber=3;
    [self labelOutput];
}

- (IBAction)inputNumber4:(id)sender {
    self.buttonNumber=4;
    [self labelOutput];
}

- (IBAction)inputNumber5:(id)sender {
    self.buttonNumber=5;
    [self labelOutput];
}

- (IBAction)inputNumber6:(id)sender {
    self.buttonNumber=6;
    [self labelOutput];
}

- (IBAction)inputNumber7:(id)sender {
    self.buttonNumber=7;
    [self labelOutput];
}

- (IBAction)inputNumber8:(id)sender {
    self.buttonNumber=8;
    [self labelOutput];
}

- (IBAction)inputNumber9:(id)sender {
    self.buttonNumber=9;
    [self labelOutput];
}

- (IBAction)inputNumber0:(id)sender {
    self.buttonNumber=0;
    [self labelOutput];
}


-(void)labelOutput{
    self.countNumber=(self.countNumber*10)+self.buttonNumber;
    NSString*print=[[NSString alloc]initWithFormat:@"%d",self.countNumber];
    self.numberOutput.text=print;
}


//四則演算
- (IBAction)add:(id)sender {
    [self calc];
    self.calcFlug=1;
    
}

- (IBAction)hiki:(id)sender {
    [self calc];
    self.calcFlug=2;
}

- (IBAction)kake:(id)sender {
    [self calc];
    self.calcFlug=3;
}

- (IBAction)wari:(id)sender {
    [self calc];
    self.calcFlug=4;
}

- (IBAction)ans:(id)sender {
    [self calc];
    self.calcFlug=0;
    self.subtotal=0;
}

- (IBAction)clear:(id)sender {
    self.subtotal =0;
    self.countNumber = 0;
    self.calcFlug =0;
    self.buttonNumber = 0;
    
    [self labelOutput];
}

//計算処理
-(void)calc{
    switch (calcFlug) {
        case 1:
            self.subtotal +=self.countNumber;
            break;
        case 2:
            self.subtotal -=self.countNumber;
            break;
        case 3:
            self.subtotal *=self.countNumber;
            break;
        case 4:
            self.subtotal /=self.countNumber;
            break;
        default:
            break;
    }
    self.countNumber=self.subtotal;
    [self labelOutput];
    self.countNumber=0;
}


@end
