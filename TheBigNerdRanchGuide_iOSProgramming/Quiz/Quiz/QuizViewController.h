//
//  QuizViewController.h
//  Quiz
//
//  Created by Tom on 12/5/13.
//  Copyright (c) 2013 The Big Mud. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
    int currentQuestionIndex;
    
    // The model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    // The view objects - don't worry about IBOutlet
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

-(IBAction)showQuestion:(id)sender;
-(IBAction)showAnser:(id)sender;

@end
