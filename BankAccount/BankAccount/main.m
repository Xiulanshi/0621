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

-(void) setName: (NSString*)name;
-(void) setAccount: (int)n;
-(void) setPocket: (int)p;


@end

@implementation Patron {
    int account;
    int InPocket;
}

    // public (decleared in interface) IMPLEMENTATION

-(void)setName {
    NSString *setName = @"lauren";
    NSLog(@"Enter your name:%@ ", setName);
    
}

-(void) setAccount: (int)n {
    NSLog(@"Your Account balance is $%d", n);
    account = n;
}
-(void) setPocket: (int)p {
    NSLog(@"Your Pocket has $%d", p);
    InPocket = p;
}


@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Start CODE
        Patron *p = [[Patron alloc]init];
        [p setName];
        [p setAccount: 1000];
        [p setPocket:500];
    
        
        //END CODE
    }
    return 0;
}
