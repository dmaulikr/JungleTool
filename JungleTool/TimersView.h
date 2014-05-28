//
//  TimersView.h
//  JungleTool
//
//  Created by Felipe Arturo Pérez Camargo on 27/05/14.
//  Copyright (c) 2014 Felipe Arturo Pérez Camargo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimersView : UIViewController{
    IBOutlet UILabel *countLabel;
    NSTimer *countDown;
    int secondsCounting;
}
-(void) setTimer;
-(void) runCountdown;

@end
