//
//  ViewController.m
//  DeltaEncoding
//
//  Created by Naattudurai Eswaramurthy on 27/02/19.
//  Copyright © 2019 Naattudurai Eswaramurthy. All rights reserved.
//

#import "ViewController.h"
#import "User.h"

@interface ViewController ()


@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self CalculateDEltaEnCoding:[NSArray arrayWithObjects: [NSNumber numberWithInt:25626],[NSNumber numberWithInt:25757], [NSNumber numberWithInt:24367],[NSNumber numberWithInt:25267], nil]];
    
    [self findAnagrams:[NSArray arrayWithObjects: @"night",@"thing",@"inch",@"chin",@"Nattu", nil]];
    
    //FullName display
    User * user = [[User alloc] init:@"Nattudurai" andMiddleName:@"Eswara" andLastName:@"murthy"];
    
    
    NSString *userName = user.fullName;
    
}


- (NSArray*)CalculateDeltaEnCoding:(NSArray *) numbers
{
    //NSMutableArray* resultArray = [[NSMutableArray alloc] init];
    NSMutableString *resultString = [NSMutableString stringWithFormat:@"%@", numbers[0]];
    for (int i=1; i< numbers.count; i++) {
        double differernce = [numbers[i] doubleValue] - [numbers[i-1] doubleValue];
        
        if(fabs(differernce) > 127)
        {
            [resultString appendString:@",-128"];
        }

        [resultString appendFormat:@",%d", (int)differernce];
        
        
    }
    
    return [resultString componentsSeparatedByString:@","];
}


-(int) findAnagrams:(NSArray *) anagramsList
{
    NSMutableArray *resultArray = [[NSMutableArray alloc] init];
    int anagramsCount = 0;
    if(anagramsList.count >  2)
    {
        for (int i=0; i < anagramsList.count-1; i++) {
            NSString *a = anagramsList[i];
            NSString *b = anagramsList[i+1];
            
            if (a.length == b.length)
            {
                
               if ([self isStringAnagram:a ofString:b])
               {
                   anagramsCount++;
               }
            }
            
        }
    }
    
    //NSLog(@"Result : %lu", (unsigned long)resultArray.count);
    
    return anagramsCount;
}

- (BOOL)isStringAnagram:(NSString *)string1 ofString:(NSString *)string2 {
    int len = string1.length;
    if (len != string2.length) {
        return NO;
    }
    
    for (int i=0; i < len; i++) {
        int h = 0;
        int q = 0;
        for (int k = 0;  k < len; k++) {
            if ([string1 characterAtIndex:i] == [string1 characterAtIndex:k]) {
                h++;
            }
            if ([string1 characterAtIndex:i] == [string2 characterAtIndex:k]) {
                q++;
            }
        }
        
        if (h != q) {
            return NO;
        }
    }
    
    return YES;
}


@end
