//
//  User.m
//  DeltaEncoding
//
//  Created by Naattudurai Eswaramurthy on 27/02/19.
//  Copyright © 2019 Naattudurai Eswaramurthy. All rights reserved.
//

#import "User.h"

@implementation User

- (id) init :(NSString *) firstName andMiddleName :(NSString*) middleName andLastName :(NSString*) lastname {
    self = [super init];
    if (self != nil) {
        // initializations go here.
        _fullName = [NSString stringWithFormat:@"%@ ^ %@ ^ %@", firstName, middleName, lastname];
    }
    return self;
}



@end
