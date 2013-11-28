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
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +1;
    numberOutput.text =[NSString stringWithFormat:@"%i", SelectNumber];
}

- (IBAction)inputNumber2:(id)sender {
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +2;
    numberOutput.text =[NSString stringWithFormat:@"%i", SelectNumber];}

- (IBAction)inputNumber3:(id)sender {
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +3;
    numberOutput.text =[NSString stringWithFormat:@"%i", SelectNumber];
}

- (IBAction)inputNumber4:(id)sender {
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +4;
    numberOutput.text =[NSString stringWithFormat:@"%i", SelectNumber];
}

- (IBAction)inputNumber5:(id)sender {
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +5;
    numberOutput.text =[NSString stringWithFormat:@"%i", SelectNumber];}

- (IBAction)inputNumber6:(id)sender {
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +6;
    numberOutput.text =[NSString stringWithFormat:@"%i", SelectNumber];
}

- (IBAction)inputNumber7:(id)sender {
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +7;
    numberOutput.text =[NSString stringWithFormat:@"%i", SelectNumber];}

- (IBAction)inputNumber8:(id)sender {
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +8;
    numberOutput.text =[NSString stringWithFormat:@"%i", SelectNumber];}

- (IBAction)inputNumber9:(id)sender {
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +9;
    numberOutput.text =[NSString stringWithFormat:@"%i", SelectNumber];
}

- (IBAction)inputNumber0:(id)sender {
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +0;
    numberOutput.text =[NSString stringWithFormat:@"%i", SelectNumber];
}

- (IBAction)clear:(id)sender {
    Method =0;
    RunningTotal = 0;
    SelectNumber =0;
    numberOutput.text = [NSString stringWithFormat:@"0"];
}


//四則演算
- (IBAction)add:(id)sender {
    if (RunningTotal ==0){
        RunningTotal = SelectNumber;
    }
    else{
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal+SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal-SelectNumber;
            case 3:
                RunningTotal = RunningTotal*SelectNumber;
            case 4:
                RunningTotal = RunningTotal/SelectNumber;
            default:
                break;
        }
    }
    
    Method=1;
    SelectNumber =0;
    
}

- (IBAction)hiki:(id)sender {
    if (RunningTotal ==0){
        RunningTotal = SelectNumber;
    }
    else{
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal+SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal-SelectNumber;
            case 3:
                RunningTotal = RunningTotal*SelectNumber;
            case 4:
                RunningTotal = RunningTotal/SelectNumber;
            default:
                break;
        }
    }
    Method=2;
    SelectNumber=0;
}

- (IBAction)kake:(id)sender {
    if (RunningTotal ==0){
        RunningTotal = SelectNumber;
    }
    else{
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal+SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal-SelectNumber;
            case 3:
                RunningTotal = RunningTotal*SelectNumber;
            case 4:
                RunningTotal = RunningTotal/SelectNumber;
            default:
                break;
        }
    }
    Method=3;
    SelectNumber =0;
}

- (IBAction)wari:(id)sender {
    if (RunningTotal ==0){
        RunningTotal = SelectNumber;
    }
    else{
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal+SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal-SelectNumber;
            case 3:
                RunningTotal = RunningTotal*SelectNumber;
            case 4:
                RunningTotal = RunningTotal/SelectNumber;
            default:
                break;
        }
    }
   Method=4;
    SelectNumber=0;
}

- (IBAction)ans:(id)sender {
    if (RunningTotal ==0){
        RunningTotal = SelectNumber;
        }
    else{
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal+SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal-SelectNumber;
            case 3:
                RunningTotal = RunningTotal*SelectNumber;
            case 4:
                RunningTotal = RunningTotal/SelectNumber;
            default:
                break;
            }
        }
    Method =0;
    SelectNumber=0;
    numberOutput.text =[
                        NSString stringWithFormat:@"%.2f",RunningTotal];
}



@end