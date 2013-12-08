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
    
    [self setItemName:name];
    [self setSerialNumber:sNumber];
    [self setValueInDollars:value];
    dateCreated = [[NSDate alloc] init];
    
    return self;
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
@end
