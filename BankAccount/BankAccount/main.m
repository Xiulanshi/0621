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
-(void) setDeposit: (int)d;
-(void) setWithDraw: (int)w;


@end

@implementation Patron {
    int accountBalance;
    int InPocket;
//    int deposit;
//    int withdraw;
}

    // public (decleared in interface) IMPLEMENTATION

-(void)setName {  // Name section
    NSString *setName = @"lauren";
    NSLog(@"Enter your name:%@ ", setName);
    
}

-(void) setAccount: (int)n {  // Account balance
    NSLog(@"Your Account balance is $%d", n);
    accountBalance = n;
}
-(void) setPocket: (int)p {   // Money in your pocket
    NSLog(@"Your Pocket has $%d", p);
    InPocket = p;
}

-(void) setDeposit{
    int d;
    NSLog(@"Max deposit amount is $10,000 per day");
    NSLog(@"Please Enter the amount you wish to deposit: ");
    scanf("%d",&d);
    accountBalance += d;
    NSLog(@"Your current balance is %d", accountBalance);
//    deposit = d;
}

-(void) setWithDraw {
    int w;
    NSLog(@"Max withdraw amount is $1,000 per day");
    NSLog(@"Please Enter the amount you wish to withdraw: ");
    scanf("%d",&w);
    if (w > accountBalance) {
        NSLog(@"You cannot withdraw more than your currentbalance: $%d",accountBalance);
        NSLog(@"Please enter a different amount you wish to withdraw: ");
        scanf("%d", &w);
    } 
    accountBalance -= w;
    NSLog(@"Your current balance is %d", accountBalance);
//    withdraw = w;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Start CODE
        Patron *p = [[Patron alloc]init];
        [p setName];          // print name
        [p setAccount: 1000]; //account balance
        [p setPocket: 600];   //money in pocket
//        [p setDeposit]; 
//        [p setWithDraw];
        
        char option;
        NSLog(@"Do you want to Deposite or Withdraw: d or w");
        scanf("%c", &option);
        if (option == 'w') {
            [p setWithDraw];
        } else if (option == 'd'){
            [p setDeposit];
        } else {
            NSLog(@"Invalid Entry");
        }
        
        
        
        //END CODE
    }
    return 0;
}
