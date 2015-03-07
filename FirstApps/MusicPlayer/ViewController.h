//
//  ViewController.h
//  Audio
//
//  Created by Manish Thani Awtaney on 22/03/14.
//  Copyright (c) 2014 Manish Thani Awtaney. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>

@interface ViewController : UIViewController <AVAudioPlayerDelegate>
{
    AVAudioPlayer *audioPlayer;
    NSURL *url;
    NSTimeInterval time;
    NSTimer *musicSliderTimer;
    NSTimeInterval duracion;
    double current;
    BOOL paused;
}

@property (nonatomic,weak) IBOutlet UISlider *volumeSlider;
@property (nonatomic,weak) IBOutlet UISlider *musicTimeSlider;
@property (nonatomic,weak) IBOutlet UITextField *leftVolumeValue;
@property (nonatomic,weak) IBOutlet UITextField *rightVolumeValue;
@property (nonatomic,weak) IBOutlet UIButton *backButton;
-(void) updateVolume;
-(IBAction)playSound:(id)sender;
-(IBAction)replaySound:(id)sender;
-(IBAction)pauseSound:(id)sender;
-(void) setMusicTime;
-(void)incrementOneSecond;
-(IBAction)backButtonPressed:(id)sender;
@end
