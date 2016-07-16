//
//  FISNewsFeedTableViewController.m
//  facepad
//
//  Created by Ismael Barry on 6/26/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISNewsFeedTableViewController.h"
#import "FISHeaderTableViewCell.h"
#import "FISTextPostTableViewCell.h"
#import "FISImagePostTableViewCell.h"
#import "FISFeedPost.h"
#import "FISTextPost.h"
#import "FISImagePost.h"
#import "FISUser.h"

@interface FISNewsFeedTableViewController ()

@end

@implementation FISNewsFeedTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.estimatedRowHeight = 200;
    self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
    
    NSLog(@"The current user is: %@", self.currentUser.username);
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    
    return [self.currentUser.posts count] + 1;

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    return 150;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Configure the cell...
    
    if (indexPath.row == 0) {
        
        FISHeaderTableViewCell *headerCell = [tableView dequeueReusableCellWithIdentifier:@"headerCell" forIndexPath:indexPath];
        headerCell.imageHeader.image = self.currentUser.cover;
        
        return headerCell;

    }
    
    if ([self.currentUser.posts[indexPath.row - 1] isKindOfClass:[FISTextPost class]]) {
        
        FISTextPostTableViewCell *textPostCell = [tableView dequeueReusableCellWithIdentifier:@"textPostCell" forIndexPath:indexPath];
        FISTextPost *textpost = self.currentUser.posts[indexPath.row - 1];
        
        textPostCell.profileImage.image = self.currentUser.profilePic;
        textPostCell.usernameLabel.text = self.currentUser.username;
        textPostCell.postLabel.text = textpost.textUserPosted;
        
        NSLog(@"entered textpost cell ");
        
        return textPostCell;
    }
    
    else if ([self.currentUser.posts[indexPath.row - 1] isKindOfClass:[FISImagePost class]]) {
        
        FISImagePostTableViewCell *imagePostCell = [tableView dequeueReusableCellWithIdentifier:@"imagePostCell" forIndexPath:indexPath];
        FISImagePost *imagePost = self.currentUser.posts[indexPath.row - 1];
        
        imagePostCell.profileImage.image = self.currentUser.profilePic;
        imagePostCell.usernameLabel.text = self.currentUser.username;
        imagePostCell.imagePost.image = imagePost.imageUserPosted;
        
        return imagePostCell;
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
