//
//  FISTextPost.h
//  facepad
//
//  Created by Ismael Barry on 6/26/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISFeedPost.h"

// Should be a subclass of FISFeedPost that adds a string property for the text that the user posted.
@interface FISTextPost : FISFeedPost

@property (strong, nonatomic) NSString *textUserPosted;

// Default Initializer:
- (instancetype)init;

// Designated Initializer:
- (instancetype)initWithTextUserPosted: (NSString*)textUserPosted;

@end
