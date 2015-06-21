//
//  main.m
//  Calculator
//
//  Created by Jason Wang on 6/21/15.
//  Copyright (c) 2015 Jason Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject


@end


@implementation Calculator {
    float a, b, sum;
    char opSign;
    float result;
}

- (void) calculate  {
    
    NSLog(@"Please enter two digits for your calculation");
    scanf("%g%c%g", &a,&opSign,&b);
    if (opSign == '+') {
        result = a+b;
        NSLog(@"%g",result);
    } else if (opSign == '-') {
        result = a-b;
        NSLog(@"%g", result);
    } else if (opSign == '*') {
        result = a*b;
        NSLog(@"%g", result);
    } else if (opSign == '/') {
        result = a/b;
        NSLog(@"%g", result);
    } else {
        NSLog(@"Invalid Operation Sign");
    }
}


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Calculator *r = [[Calculator alloc] init];
        [r calculate];
        
    }
    return 0;
}
