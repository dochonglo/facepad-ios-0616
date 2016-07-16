//
//  FISFeedPost.m
//  facepad
//
//  Created by Ismael Barry on 6/26/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISFeedPost.h"

//  Will be the base class for the other two classes. It has the properties all posts have in common: the user who posted, and the date it was posted.
@implementation FISFeedPost

// Default Initializer:
- (instancetype)init {
    
    self = [self initWithUserWhoPosted:@"" datePosted:@""];
    
    return self;
    
}

// Designated Initializer:
- (instancetype)initWithUserWhoPosted:(NSString *)userWhoPosted datePosted:(NSString *)datePosted {
    
    self = [super init];
    
    if (self) {
        _userWhoPosted = userWhoPosted;
        _datePosted = datePosted;
    }
    
    return self;
}

@end
