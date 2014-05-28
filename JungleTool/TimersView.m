//
//  TimersView.m
//  JungleTool
//
//  Created by Felipe Arturo Pérez Camargo on 27/05/14.
//  Copyright (c) 2014 Felipe Arturo Pérez Camargo. All rights reserved.
//

#import "TimersView.h"

@interface TimersView ()

@end

@implementation TimersView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setTimer:60];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) runCountdown{
    secondsCounting -= 1;
    int minutes = secondsCounting/60;
    int seconds = secondsCounting - (minutes * 60);
    countLabel.text = [NSString stringWithFormat:@"%2d:%2d", minutes, seconds];
    
    if(secondsCounting == 0){
        [countDown invalidate];
        countDown = nil;
    }
    
}
-(void) setTimer:(int)time{
    secondsCounting = time;
    countDown = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(runCountdown) userInfo:nil repeats:YES];
    
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
