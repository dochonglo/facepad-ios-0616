//
//  FISImagePost.h
//  facepad
//
//  Created by Ismael Barry on 6/26/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISFeedPost.h"

// Should be a subclass of FISFeedPost with a UIImage property for the image the user posted.
@interface FISImagePost : FISFeedPost

@property (strong, nonatomic) UIImage *imageUserPosted;

// Default Initializer:
- (instancetype)init;

// Designated Initializer:
- (instancetype)initWithImageUserPosted: (UIImage*)imageUserPosted;

@end
