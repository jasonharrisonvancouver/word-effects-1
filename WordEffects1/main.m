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
            
            printf("Input a number 1-9: ");
            // limit input to max 255 characters
            fgets(inputNumber, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", inputNumber);
            
            // convert char array to an NSString object
            NSString *inputNumberString = [NSString stringWithUTF8String:inputNumber];
            
            // print NSString object
            NSLog(@"Number was: %@", inputNumberString);
            
            int userNumber = [inputNumberString intValue];
            
            
            
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", inputChars);
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            // print NSString object
            NSLog(@"Input was: %@", inputString);
            
            NSString *lastChar;
            NSString *charString;
            NSString *emoji = [NSString stringWithFormat:@"\U0001F463"];
            
            char c;
            int count = 0;
            
            int numValue;
            
            switch (userNumber) {
                case 1:
                    inputString = [inputString uppercaseString];
                    break;
                case 2:
                    inputString = [inputString lowercaseString];
                
                    break;
                case 3:
                    numValue = [inputString intValue];
                    if(numValue != 0){
                        NSLog(@"Number found: %i", numValue);
                    }else{
                        NSLog(@"Not a number");
                    }
                    break;
                case 4:
                    inputString = [inputString stringByAppendingString:@", eh?"];
                    break;
                case 5:
                  //  NSString *lastChar = [inputString substringFromIndex:[inputString length] -1];
                    
                    lastChar = [inputString substringFromIndex:[inputString length] - 2];
                    
                    NSLog(@"last char was %@", lastChar);
                    
                    if([lastChar isEqualToString:@"?\n"]){
                        NSLog(@"I don't know");
                    }else if([lastChar isEqualToString:@"!\n"]){
                        NSLog(@"Whoa, calm down!");
                    }else{
                        // nothing to do
                    }
                    break;
                case 6:
                    inputString = [inputString stringByReplacingOccurrencesOfString:@" "
                                                                         withString:@"-"];
                    break;
                    
                case 7:
                    
                    inputString = [inputString lowercaseString];
                    // letter count
                    for(int i = 0; i < ([inputString length] - 1); i++){
                        c = [inputString characterAtIndex:i];
                        //NSLog(@"letter is %c", c);
                        if(c >= 'a' && c <= 'z'){
                            count++;
                        }
                    }
                    NSLog(@"%i letters", count);
                    break;
                case 8:
                    // punctuation removal
                    inputString = [inputString stringByReplacingOccurrencesOfString:@"."
                                                                         withString:@""];
                    inputString = [inputString stringByReplacingOccurrencesOfString:@","
                                                                         withString:@""];
                    inputString = [inputString stringByReplacingOccurrencesOfString:@"?"
                                                                         withString:@""];
                    inputString = [inputString stringByReplacingOccurrencesOfString:@"!"
                                                                         withString:@""];
                    inputString = [inputString stringByReplacingOccurrencesOfString:@":"
                                                                         withString:@""];
                    inputString = [inputString stringByReplacingOccurrencesOfString:@";"
                                                                         withString:@""];
  
                    
                    
                    break;
                case 9:
                    // replace every letter with an emoji
                    inputString = [inputString lowercaseString];
                    // letter count
                    for(int i = 0; i < ([inputString length] - 1); i++){
                        c = [inputString characterAtIndex:i];
                        //NSLog(@"letter is %c", c);
                        charString = [[NSMutableString alloc] initWithFormat:@"%c", c];
                        if(c >= 'a' && c <= 'z'){
                            inputString = [inputString stringByReplacingOccurrencesOfString:charString
                                                                                 withString:emoji];
                        }
                    }
                    NSLog(@"%i letters", count);
                    break;
                    break;
                    
                default:
                    break;
            }
            NSLog(@"%@", inputString);
        }
    }
    return 0;
}
