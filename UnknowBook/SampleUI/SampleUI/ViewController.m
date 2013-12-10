//
//  ViewController.m
//  SampleUI
//
//  Created by Tom on 12/1/13.
//  Copyright (c) 2013 The Big Mud. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Do any additional setup after loading the view, typically from a nib.
    counter = 0;
    self.myLabel.text = [[NSNumber numberWithInt:counter] stringValue];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    counter++;
    
    self.myLabel.text = [[NSNumber numberWithInt:counter] stringValue];
    self.mySlider.value = counter;
}

- (IBAction)sliderMoved:(id)sender {
    counter = self.mySlider.value;
    
    self.myLabel.text = [[NSNumber numberWithInt:counter] stringValue];
}
@end
