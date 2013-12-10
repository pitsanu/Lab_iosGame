//
//  QuizViewController.m
//  Quiz
//
//  Created by Tom on 12/5/13.
//  Copyright (c) 2013 The Big Mud. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    // Call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self)
    {
        // Create two arrays and make the pointers point to them
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        // Add questions and answer to the arrays
        [questions addObject:@"What is 7 + 7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the captal of Vermont?"];
        [answers addObject:@"Montpelier"];
        
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
    }
    
    // Return the address of the ®new object
    return self;
}

-(IBAction)showQuestion:(id)sender
{
    // Step to the next question
    currentQuestionIndex++;
    
    // Am I past the last questions?
    if(currentQuestionIndex == [questions count])
    {
        // Go back to the first question
        currentQuestionIndex = 0;
    }
    
    // Get the string at that index in the questions array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    // Log the string to the console
    NSLog(@"displaying question: %@", question);
    
    // Display the string in the question field
    [questionField setText:question];
    
    // Clear the answer field
    [answerField setText:@"???"];
}

-(IBAction)showAnser:(id)sender
{
    // What is the answr to the current question?
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    // Display it in the answer field
    [answerField setText:answer];
}

@end
