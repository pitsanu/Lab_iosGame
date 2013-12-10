//
//  main.m
//  RandomPossessions
//
//  Created by Tom on 12/8/13.
//  Copyright (c) 2013 The Big Mud. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        // Create a mutable array
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for(int i = 0; i < 10; i++)
        {
            BNRItem *p = [BNRItem randomItem];
            //[p doSomethingWeird];
            [items addObject:p];
        }
        
        for(int i = 0; i < 10; i++)
        {
            NSLog(@"%@", [items objectAtIndex:i]);
        }
        
        items = nil;
        
    }
    return 0;
}

