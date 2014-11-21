//
//  DetailViewController.h
//  iosQuiz
//
//  Created by Maxwell Stein on 11/21/14.
//  Copyright (c) 2014 Maxwell Stein. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

