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
        
        // Send the message to array
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // Send another message
        [items insertObject:@"Zero" atIndex:0];
        
        // For every item in the array
        for(int i=0; i<[items count]; i++)
        {
            NSLog(@"%@",[items objectAtIndex:i]);
        }
        
        // Descript array
        NSLog(@"Description: %@",items);
        
        
        
        // BNRItem demo
        BNRItem *p = [[BNRItem alloc] init];
        [p setItemName:@"Red Sofa"];
        [p setSerialNumber:@"A1B2C"];
        [p setValueInDollars:100];
        
        NSLog(@"%@ %@ %@ %d", [p itemName], [p dateCreated], [p serialNumber], [p valueInDollars]);
        NSLog(@"Description: %@", p);
        
        // Destroy the array
        items = nil;
        
    }
    return 0;
}

