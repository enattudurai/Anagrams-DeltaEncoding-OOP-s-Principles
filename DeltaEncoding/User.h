//
//  User.h
//  DeltaEncoding
//
//  Created by Naattudurai Eswaramurthy on 27/02/19.
//  Copyright © 2019 Naattudurai Eswaramurthy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject
{
//    NSString *firstName;
//    NSString *lastName;
//    NSString *middleName;
}
- (id) init :(NSString *) firstName andMiddleName :(NSString*) middleName andLastName :(NSString*) lastname;

@property (readonly) NSString* fullName;

@end

NS_ASSUME_NONNULL_END
