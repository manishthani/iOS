//
//  ViewController.m
//  Audio
//
//  Created by Manish Thani Awtaney on 22/03/14.
//  Copyright (c) 2014 Manish Thani Awtaney. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

-(void)updateVolume {
    [audioPlayer setVolume:_volumeSlider.value];
    NSLog(@"%f",_volumeSlider.value);
}


-(IBAction)pauseSound:(id)sender{   //Fix Pause Problem due to Music Time Slider from:
                                //www.stackoverflow.com/questions/347219/how-can-i-programmatically-pause-an-nstimer
    [audioPlayer stop];
    time = [audioPlayer currentTime];
    paused = YES;
}



-(void)setMusicTime {
    [audioPlayer stop];
    [audioPlayer setCurrentTime:_musicTimeSlider.value];
    current = _musicTimeSlider.value;
    [audioPlayer play];
}

-(void)incrementOneSecond {
    if(!paused){
        current = current + 1;
        if(((int)_musicTimeSlider.value % 60) < 10){
            _leftVolumeValue.text = [NSString stringWithFormat:@"%d : 0%d",((int)_musicTimeSlider.value /60), ((int)_musicTimeSlider.value % 60)];
        }
        else {
            _leftVolumeValue.text = [NSString stringWithFormat:@"%d : %d",((int)_musicTimeSlider.value /60), ((int)_musicTimeSlider.value % 60)];
        }
        if((((int)duracion - (int)_musicTimeSlider.value) % 60) < 10){
            _rightVolumeValue.text = [NSString stringWithFormat:@"%d : 0%d",((int) duracion - (int)_musicTimeSlider.value) /60, ((int)duracion - (int)_musicTimeSlider.value) % 60];
        }
        else {
             _rightVolumeValue.text = [NSString stringWithFormat:@"%d : %d",((int) duracion - (int)_musicTimeSlider.value) /60, ((int)duracion - (int)_musicTimeSlider.value) % 60];
        }
    }
    [_musicTimeSlider setValue:current animated:YES];
    
}

-(IBAction)playSound:(id)sender{
    paused = NO;
    musicSliderTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(incrementOneSecond) userInfo:nil repeats:YES];
    [audioPlayer setCurrentTime:time];
    [audioPlayer play];

    
    /*A better way to program a volume slider without using timers like this:
     volumeTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateVolume) userInfo:nil repeats:YES];*/
    
    [_volumeSlider  addTarget:self action:@selector(updateVolume) forControlEvents:UIControlEventValueChanged];
    
    /*Same efficient way applied to the musicTimeSlider*/
    [_musicTimeSlider addTarget:self action:@selector(setMusicTime) forControlEvents:UIControlEventValueChanged];
    
}

-(IBAction)replaySound:(id)sender{
    [audioPlayer stop];
    [audioPlayer setCurrentTime:0];
    time = current = 0;
    [audioPlayer play];
}
-(IBAction)backButtonPressed:(id)sender{
    [audioPlayer stop];
    [audioPlayer finalize];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    paused = NO;
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                  pathForResource:@"hello"
                                  ofType:@"mp3"]];
    audioPlayer = [[AVAudioPlayer alloc]
                   initWithContentsOfURL:url
                   error:nil];
    duracion = [audioPlayer duration];
    _musicTimeSlider.maximumValue = floor(duracion);
    if((int)duracion % 60 < 10){
          _rightVolumeValue.text = [NSString stringWithFormat:@"%d : %d",(int)duracion/60,((int)duracion) %60] ;
    }
    else _rightVolumeValue.text = [NSString stringWithFormat:@"%d : 0%d",(int)duracion/60,((int)duracion) %60] ;
    current = 0;
    [audioPlayer prepareToPlay];
    
}

- (void)viewDidDisappear:(BOOL)animated{
    [audioPlayer stop];
    audioPlayer = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
