//
//  FISFeedPost.h
//  facepad
//
//  Created by Ismael Barry on 6/26/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

//  Will be the base class for the other two classes. It has the properties all posts have in common: the user who posted, and the date it was posted.
@interface FISFeedPost : NSObject

@property (strong, nonatomic) NSString *userWhoPosted;
@property (strong, nonatomic) NSString *datePosted;

// Default Initializer:
- (instancetype)init;

// Designated Initializer:
- (instancetype)initWithUserWhoPosted: (NSString*)userWhoPosted datePosted: (NSString*)datePosted;

@end
