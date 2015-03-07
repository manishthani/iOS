//
//  ViewController.m
//  ATM
//
//  Created by Manish Thani Awtaney on 08/02/14.
//  Copyright (c) 2014 Manish Thani Awtaney. All rights reserved.
//

#import "ViewController.h"
#define MAXNUMBER ((NSInteger) 100000000)

@implementation ViewController



@synthesize buttonAdd,buttonClear,butttonNine,buttonEight,buttonSeven, buttonSix,buttonFive,buttonFour,buttonThree,buttonTwo,buttonOne,buttonZero,balanceLabel,addLabel;

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

-(IBAction)clickButton1:(id)sender{
    //buttonOne.backgroundColor = [UIColor colorWithRed:0.85f green:0.55f blue:0.75f alpha:0.5];
    NSInteger amountInt = [addLabel.text intValue];
    if((amountInt / MAXNUMBER) == 0)amountInt  = (amountInt * 10) + 1; // How to use define of constant variables?
    addLabel.text = [NSString stringWithFormat:@"%ld",(long)amountInt];
    
}
-(IBAction)clickButton2:(id)sender{
    NSInteger amountInt = [addLabel.text intValue];
    if((amountInt / MAXNUMBER) == 0)amountInt  = (amountInt * 10) + 2; // How to use define of constant variables?
    addLabel.text = [NSString stringWithFormat:@"%ld",(long)amountInt];
}
-(IBAction)clickButton3:(id)sender{
    NSInteger amountInt = [addLabel.text intValue];
    if((amountInt / MAXNUMBER) == 0)amountInt  = (amountInt * 10) + 3; // How to use define of constant variables?
    addLabel.text = [NSString stringWithFormat:@"%ld",(long)amountInt];
}
-(IBAction)clickButton4:(id)sender{
    NSInteger amountInt = [addLabel.text intValue];
    if((amountInt / MAXNUMBER) == 0)amountInt  = (amountInt * 10) + 4; // How to use define of constant variables?
    addLabel.text = [NSString stringWithFormat:@"%ld",(long)amountInt];
}
-(IBAction)clickButton5:(id)sender{
    NSInteger amountInt = [addLabel.text intValue];
    if((amountInt / MAXNUMBER) == 0)amountInt  = (amountInt * 10) + 5; // How to use define of constant variables?
    addLabel.text = [NSString stringWithFormat:@"%ld",(long)amountInt];
    
}
-(IBAction)clickButton6:(id)sender{
    NSInteger amountInt = [addLabel.text intValue];
    if((amountInt / MAXNUMBER) == 0)amountInt  = (amountInt * 10) + 6; // How to use define of constant variables?
    addLabel.text = [NSString stringWithFormat:@"%ld",(long)amountInt];
}
-(IBAction)clickButton7:(id)sender{
    NSInteger amountInt = [addLabel.text intValue];
    if((amountInt / MAXNUMBER) == 0)amountInt  = (amountInt * 10) + 7; // How to use define of constant variables?
    addLabel.text = [NSString stringWithFormat:@"%ld",(long)amountInt];
}
-(IBAction)clickButton8:(id)sender{
    NSInteger amountInt = [addLabel.text intValue];
    if((amountInt / MAXNUMBER) == 0)amountInt  = (amountInt * 10) + 8; // How to use define of constant variables?
    addLabel.text = [NSString stringWithFormat:@"%ld",(long)amountInt];
}
-(IBAction)clickButton9:(id)sender{
    NSInteger amountInt = [addLabel.text intValue];
    if((amountInt / MAXNUMBER) == 0)amountInt  = (amountInt * 10) + 9; // How to use define of constant variables?
    addLabel.text = [NSString stringWithFormat:@"%ld",(long)amountInt];
}
-(IBAction)clickButton0:(id)sender{
    NSInteger amountInt = [addLabel.text intValue];
    if((amountInt / MAXNUMBER) == 0)amountInt  = (amountInt * 10); // How to use define of constant variables?
    addLabel.text = [NSString stringWithFormat:@"%ld",(long)amountInt];
}
-(IBAction)clickButtonClear:(id)sender{
    addLabel.text = nil;
}
-(IBAction)clickButtonAdd:(id)sender{
    
    NSInteger amount = [addLabel.text integerValue];
    total = [balanceLabel.text integerValue];
    if(total + amount < MAXNUMBER)total += amount;  //Implement a UIAlert if total exceeds from MAXNUMBER
    balanceLabel.text = [NSString stringWithFormat:@"%ld",(long)total];
    addLabel.text = nil;
}

@end
