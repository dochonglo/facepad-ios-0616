//
//  FISUser.m
//  facepad
//
//  Created by Ismael Barry on 6/26/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISUser.h"

@implementation FISUser

// Default Initializer:
- (instancetype)init {
    
    self = [self initWithUsername:@"" profilePic:[UIImage imageNamed:@"placeholderImage1" ] cover:[UIImage imageNamed:@"coverimage.png"] posts:@[]];
 
    return self;
    
}

// Designated Initializer:
- (instancetype)initWithUsername:(NSString *)username profilePic:(UIImage *)profilePic cover:(UIImage *)cover posts:(NSArray *)posts {
    
    self = [super init];
    
    if (self) {
        _username = username;
        _profilePic = profilePic;
        _cover = cover;
        _posts = posts;
    }
    
    return self;
}

@end
