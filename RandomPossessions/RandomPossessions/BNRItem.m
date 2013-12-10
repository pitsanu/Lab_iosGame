//
//  BNRItem.m
//  RandomPossessions
//
//  Created by Tom on 12/8/13.
//  Copyright (c) 2013 The Big Mud. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

// Initializers
-(id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    self = [super init];
    
    if(self)
    {
        [self setItemName:name];
        [self setSerialNumber:sNumber];
        [self setValueInDollars:value];
        dateCreated = [[NSDate alloc] init];
    }
    
    return self;
}

-(id)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}

-(id)init
{
    return [self initWithItemName:@"Item" valueInDollars:0 serialNumber:@""];
}

// Instance methods
-(void)setItemName:(NSString *)str
{
    itemName = str;
}
-(NSString *)itemName
{
    return itemName;
}

-(void)setSerialNumber:(NSString *)str
{
    serialNumber = str;
}
-(NSString *)serialNumber
{
    return serialNumber;
}

-(void)setValueInDollars:(int)i
{
    valueInDollars = i;
}
-(int)valueInDollars
{
    return valueInDollars;
}

-(NSDate *)dateCreated
{
    return dateCreated;
}


// Override methods
-(NSString *) description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
                                   itemName, serialNumber, valueInDollars, dateCreated];
    return descriptionString;
}

// Class methods
+(id)randomItem
{
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy", @"Rusty", @"Shiny", nil];
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear", @"Spork", @"Mac", nil];
    
    NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];
    NSInteger nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                          [randomAdjectiveList objectAtIndex:adjectiveIndex],
                          [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() * 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    'O' + rand() % 10,
                                    'A' + rand() % 26,
                                    'O' + rand() % 10,
                                    'A' + rand() % 26,
                                    'O' + rand() % 10];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName
                                       valueInDollars:randomValue
                                         serialNumber:randomSerialNumber];
    
    return newItem;
}

@end
