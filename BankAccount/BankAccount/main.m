//
//  main.m
//  BankAccount
//
//  Created by Jason Wang on 6/21/15.
//  Copyright (c) 2015 Jason Wang. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BankAccount : NSObject



@end



@interface Patron : NSObject

-(void) setName: (NSString*)n;
-(void) setAccountNumber: (int)a;
-(void) setPocket: (int)p;


@end

@implementation Patron {
    NSString *setName;
    int AccountNumber;
    int inPocket;
}

    // public (decleared in interface) IMPLEMENTATION

-(void)setName:(NSString *)name {
    NSLog(@"Enter your name: ");
    
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Start CODE
        
        
        //END CODE
    }
    return 0;
}
