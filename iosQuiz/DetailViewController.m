//
//  DetailViewController.m
//  iosQuiz
//
//  Created by Maxwell Stein on 11/21/14.
//  Copyright (c) 2014 Maxwell Stein. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    PFObject *entry = self.detailItem;
    NSString *title = entry[@"Title"];
    NSString *description = entry[@"Description"];
    NSString *image = entry[@"Image"];
    UIImageView *someImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 60, 320, 200)];
    someImageView.image =[UIImage imageNamed:image];
    if (self.detailItem) {
        self.title = title;
        self.detailDescriptionLabel.text = description;
        [self.view addSubview:someImageView];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
