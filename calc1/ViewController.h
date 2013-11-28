//
//  ViewController.h
//  calc1
//
//  Created by 貞清　敦 on 13/11/21.
//  Copyright (c) 2013年 University of kitakyushu. All rights reserved.
//

#import <UIKit/UIKit.h>

int Method;
int SelectNumber;
float RunningTotal;
@interface ViewController : UIViewController{
    IBOutlet UILabel *numberOutput;
}

//数字ボタン
- (IBAction)inputNumber1:(id)sender;
- (IBAction)inputNumber2:(id)sender;
- (IBAction)inputNumber3:(id)sender;
- (IBAction)inputNumber4:(id)sender;
- (IBAction)inputNumber5:(id)sender;
- (IBAction)inputNumber6:(id)sender;
- (IBAction)inputNumber7:(id)sender;
- (IBAction)inputNumber8:(id)sender;
- (IBAction)inputNumber9:(id)sender;
- (IBAction)inputNumber0:(id)sender;
//四則演算ボタン
- (IBAction)add:(id)sender;
- (IBAction)hiki:(id)sender;
- (IBAction)kake:(id)sender;
- (IBAction)wari:(id)sender;
- (IBAction)ans:(id)sender;
- (IBAction)clear:(id)sender;

@end
