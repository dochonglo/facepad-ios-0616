//
//  FISTextPost.m
//  facepad
//
//  Created by Ismael Barry on 6/26/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISTextPost.h"

// Should be a subclass of FISFeedPost that adds a string property for the text that the user posted.
@implementation FISTextPost

// Default Initializer:
- (instancetype)init {
    
    self = [self initWithTextUserPosted:@""];
    
    return self;
    
}

// Designated Initializer:
- (instancetype)initWithTextUserPosted:(NSString *)textUserPosted {
    
    self = [super init];
    
    if (self) {
        _textUserPosted = textUserPosted;
    }
    
    return self;
}

@end
