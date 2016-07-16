//
//  FISUsersTableViewController.m
//  facepad
//
//  Created by Ismael Barry on 6/26/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISUsersTableViewController.h"
#import "FISUser.h"
#import "FISFeedPost.h"
#import "FISTextPost.h"
#import "FISImagePost.h"
#import "FISNewsFeedTableViewController.h"

@interface FISUsersTableViewController ()

@end

@implementation FISUsersTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Sample Posts:
    FISTextPost *post1 = [[FISTextPost alloc]initWithTextUserPosted:@"What's up, What's app?"];
    FISImagePost *post2 = [[FISImagePost alloc] initWithImageUserPosted:[UIImage imageNamed:@"flying.png"]];
    FISTextPost *post3 = [[FISTextPost alloc] initWithTextUserPosted:@"Shoes!, Shoes! SHOES!!!!"];
    FISImagePost *post4 = [[FISImagePost alloc] initWithImageUserPosted:[UIImage imageNamed:@"flying.png"]];
    FISTextPost *post5 = [[FISTextPost alloc] initWithTextUserPosted:@"The struggle is realz yo!!!?"];
    FISTextPost *post6 = [[FISTextPost alloc] initWithTextUserPosted:@"umm...yolo?"];
    
    // Sample Users:
    FISUser *user1 = [[FISUser alloc] initWithUsername:@"Ismael" profilePic:[UIImage imageNamed:@"joe-burgess.png"] cover:[UIImage imageNamed:@"coverimage.png"] posts:@[post1]];
    FISUser *user2 = [[FISUser alloc] initWithUsername:@"Eldon" profilePic:[UIImage imageNamed:@"joe-burgess.png"] cover:[UIImage imageNamed:@"coverimage.png"] posts:@[post3, post2]];
    FISUser *user3 = [[FISUser alloc] initWithUsername:@"David" profilePic:[UIImage imageNamed:@"joe-burgess.png"] cover:[UIImage imageNamed:@"coverimage.png"] posts:@[post4]];
    FISUser *user4 = [[FISUser alloc] initWithUsername:@"Bettina" profilePic:[UIImage imageNamed:@"joe-burgess.png"] cover:[UIImage imageNamed:@"coverimage.png"] posts:@[post5]];
    FISUser *user5 = [[FISUser alloc] initWithUsername:@"Rebecca" profilePic:[UIImage imageNamed:@"joe-burgess.png"] cover:[UIImage imageNamed:@"coverimage.png"] posts:@[post6]];
    
    [post1 class];
    
    // Store users in userArray:
    self.userArray = @[user1, user2, user3, user4, user5];
    
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
    return [self.userArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"userCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    FISUser *eachUser = self.userArray[indexPath.row];
    cell.textLabel.text = eachUser.username;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    FISNewsFeedTableViewController *destinationVC = (FISNewsFeedTableViewController*)segue.destinationViewController;
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    FISUser *eachUser = self.userArray[indexPath.row];
    
    
    if ([segue.identifier isEqualToString:@"segueToNewsFeed"]) {

        destinationVC.currentUser = eachUser;
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
