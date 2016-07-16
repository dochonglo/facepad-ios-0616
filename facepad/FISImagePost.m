//
//  FISImagePost.m
//  facepad
//
//  Created by Ismael Barry on 6/26/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISImagePost.h"

// Should be a subclass of FISFeedPost with a UIImage property for the image the user posted.
@implementation FISImagePost

// Default Initializer:
- (instancetype)init {
    
    self = [self initWithImageUserPosted:[UIImage imageNamed:@"placeholderImage1"]];
    
    return self;
    
}

// Designated Initializer:
- (instancetype)initWithImageUserPosted:(UIImage *)imageUserPosted {
    
    self = [super init];
    
    if (self) {
        _imageUserPosted = imageUserPosted;
    }
    
    return self;
}

@end
