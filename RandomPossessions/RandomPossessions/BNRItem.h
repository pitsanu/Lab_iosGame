//
//  BNRItem.h
//  RandomPossessions
//
//  Created by Tom on 12/8/13.
//  Copyright (c) 2013 The Big Mud. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

// Class methods
+(id)randomItem;

// Initializer
-(id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;
-(id)initWithItemName:(NSString *)name;

// Instance method
-(void)setItemName:(NSString *)str;
-(NSString *)itemName;

-(void)setSerialNumber:(NSString *)str;
-(NSString *)serialNumber;

-(void)setValueInDollars:(int)i;
-(int)valueInDollars;

-(NSDate *)dateCreated;

//-(void)doSomethingWeird;

@end
