//
//  AppDelegate.m
//  FizzBuzz-Objc
//
//  Created by Joshua Howland on 8/22/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    for(int i = 1 ; i <= 100 ; i++)
    {
        [self isBuzzed:i];
        [self isFizzed:i];
        if ([self isBuzzed:i] && ![self isFizzed:i]){
            NSLog(@"isBuzzed");
        }
        else if ([self isFizzed:i] && ![self isBuzzed:i]){
            NSLog(@"isFizzed");
        }
        else if ([self isBuzzed:i] && [self isFizzed:i]){
            NSLog(@"FizzBuzz");
        }
        else {
            NSLog(@"%d",i);
        }
    }
    // Insert code here
    
    return YES;
}

- (bool)isBuzzed:(int)number{
    NSString *numberString = [NSString stringWithFormat:@"%d", number];
    
    if (number % 3 == 0 ){
        return YES;
    }
   else if ([numberString containsString:@"3"])
   {
       return YES;
   }
   else {
       return NO;
   }
    
}

- (bool)isFizzed:(int)number{
    
    NSString *numberString = [NSString stringWithFormat:@"%d", number];
    if (number % 5 == 0){
        return YES;
    }
    else if ([numberString containsString:@"5"])
    {
        return YES;
    }
    else {
        return NO;
    }
}

@end
