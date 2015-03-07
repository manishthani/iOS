//
//  ViewController.h
//  ATM
//
//  Created by Manish Thani Awtaney on 08/02/14.
//  Copyright (c) 2014 Manish Thani Awtaney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSInteger total;
}
@property (nonatomic,weak) IBOutlet UILabel* addLabel;
@property (nonatomic,weak) IBOutlet UILabel* balanceLabel;

@property (nonatomic,weak) UIButton* buttonOne;
@property (nonatomic,weak) UIButton* buttonTwo;
@property (nonatomic,weak) UIButton* buttonThree;
@property (nonatomic,weak) UIButton* buttonFour;
@property (nonatomic,weak) UIButton* buttonFive;
@property (nonatomic,weak) UIButton* buttonSix;
@property (nonatomic,weak) UIButton* buttonSeven;
@property (nonatomic,weak) UIButton* buttonEight;
@property (nonatomic,weak) UIButton* butttonNine;
@property (nonatomic,weak) UIButton* buttonZero;
@property (nonatomic,weak) UIButton* buttonClear;
@property (nonatomic,weak) UIButton* buttonAdd;

-(IBAction)clickButton1:(id)sender;
-(IBAction)clickButton2:(id)sender;
-(IBAction)clickButton3:(id)sender;
-(IBAction)clickButton4:(id)sender;
-(IBAction)clickButton5:(id)sender;
-(IBAction)clickButton6:(id)sender;
-(IBAction)clickButton7:(id)sender;
-(IBAction)clickButton8:(id)sender;
-(IBAction)clickButton9:(id)sender;
-(IBAction)clickButton0:(id)sender;
-(IBAction)clickButtonClear:(id)sender;
-(IBAction)clickButtonAdd:(id)sender;

@end
