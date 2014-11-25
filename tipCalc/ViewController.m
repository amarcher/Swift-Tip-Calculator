//
//  ViewController.m
//  tipCalc
//
//  Created by Yash Varma on 11/20/14.
//  Copyright (c) 2014 tipCalc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *amountTextField;
@property (weak, nonatomic) IBOutlet UILabel *fifteenPercentLabel;
@property (weak, nonatomic) IBOutlet UILabel *twentyPercentLabel;
@property (weak, nonatomic) IBOutlet UILabel *twentyFivePercentLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(NSString *)calculateTipAmountFor:(float)tipAmount {
    
    float tip = tipAmount/100;
    float totalAmount = [self.amountTextField.text floatValue];
    float calculatedAmount = tip * totalAmount;
    NSString * totalString = [NSString stringWithFormat:@"$%.02f", calculatedAmount];
    
    return totalString;
    
}

- (IBAction)calculateTip:(id)sender {
    
    self.fifteenPercentLabel.text = [self calculateTipAmountFor:15];
    self.twentyPercentLabel.text = [self calculateTipAmountFor:20];
    self.twentyFivePercentLabel.text = [self calculateTipAmountFor:25];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
