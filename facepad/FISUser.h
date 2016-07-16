//
//  FISUser.h
//  facepad
//
//  Created by Ismael Barry on 6/26/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISUser : NSObject

@property (strong, nonatomic) NSString *username;
@property (strong, nonatomic) UIImage *profilePic;
@property (strong, nonatomic) UIImage *cover;
@property (strong, nonatomic) NSArray *posts;

// Default Initializer:
- (instancetype)init;

// Designated Initializer:
- (instancetype)initWithUsername: (NSString*)username profilePic: (UIImage *)profilePic cover: (UIImage *)cover posts: (NSArray*)posts;

@end
