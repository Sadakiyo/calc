//
//  ViewController.h
//  calc1
//
//  Created by 貞清　敦 on 13/11/21.
//  Copyright (c) 2013年 University of kitakyushu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic,assign)NSInteger countNumber;
@property(nonatomic,assign)NSInteger buttonNumber;
@property (weak, nonatomic) IBOutlet UILabel *numberOutput;
- (IBAction)inputNumber1:(id)sender;
- (IBAction)inputNumber2:(id)sender;

@end
