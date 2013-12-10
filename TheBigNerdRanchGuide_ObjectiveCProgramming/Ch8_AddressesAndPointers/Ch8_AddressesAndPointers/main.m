//
//  main.m
//  Ch8_AddressesAndPointers
//
//  Created by Tom on 12/5/13.
//  Copyright (c) 2013 The Big Mud. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        //NSLog(@"Hello, World!");
        
        int i = 17;
        int* addressOfI = &i;
        int* tempAddressOfI = addressOfI;
        
        printf("i stores its value at %p\n", addressOfI);
        printf("this function start at %p\n", main);
        printf("the int stored at addressOfI is %d\n", *addressOfI);
        printf("addressOfI stores its value at %p\n", &addressOfI);
        
        *addressOfI = 20;
        printf("the int stored at tempAddressOfI is %d\n", *tempAddressOfI);
        printf("the value of i %d\n", i);
        
        printf("Size of integer %zu\n", sizeof(int));
        printf("Size of pointer to integer %zu\n", sizeof(i));
        printf("Size of pointer to char %zu\n", sizeof(addressOfI));
        printf("Size of pointer to function %zu\n", sizeof(main));
    }
    return 0;
}

