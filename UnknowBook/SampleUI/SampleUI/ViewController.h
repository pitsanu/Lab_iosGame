//
//  ViewController.h
//  SampleUI
//
//  Created by Tom on 12/1/13.
//  Copyright (c) 2013 The Big Mud. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int counter;
}

@property (weak, nonatomic) IBOutlet UILabel *myLabel;
- (IBAction)buttonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UISlider *mySlider;
- (IBAction)sliderMoved:(id)sender;

@end
