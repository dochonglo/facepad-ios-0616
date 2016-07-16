//
//  FISNewsFeedTableViewController.h
//  facepad
//
//  Created by Ismael Barry on 6/26/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISUser.h"

@interface FISNewsFeedTableViewController : UITableViewController

// Specific user:
@property (strong, nonatomic) FISUser *currentUser;

@property (strong, nonatomic) UIImage *imageHeaderPlaceholder;
@property (strong, nonatomic) UIImage *profileImagePlaceholder;
@property (strong, nonatomic) NSString *usernamePlaceholder;
@property (strong, nonatomic) NSArray *postLabelPlaceholder;
@property (strong, nonatomic) UIImage *imagePostPlaceholder;

@end
