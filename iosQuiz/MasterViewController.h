//
//  MasterViewController.h
//  iosQuiz
//
//  Created by Maxwell Stein on 11/21/14.
//  Copyright (c) 2014 Maxwell Stein. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface MasterViewController : UITableViewController


-(void)insertRow:(PFObject*)object;

@end

