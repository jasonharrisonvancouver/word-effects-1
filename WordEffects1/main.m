//
//  main.m
//  WordEffects1
//
//  Created by jason harrison on 2019-01-10.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while(YES){
            
            // 255 unit long array of characters
            char inputChars[255];
            
            
            
            // 255 unit long array of characters
            char inputNumber[255];
            
            printf("Input a number 1-6: ");
            // limit input to max 255 characters
            fgets(inputNumber, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", inputNumber);
            
            // convert char array to an NSString object
            NSString *inputNumberString = [NSString stringWithUTF8String:inputNumber];
            
            // print NSString object
            NSLog(@"Number was: %@", inputNumberString);
            
            
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", inputChars);
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            // print NSString object
            NSLog(@"Input was: %@", inputString);
        }
    }
    return 0;
}
