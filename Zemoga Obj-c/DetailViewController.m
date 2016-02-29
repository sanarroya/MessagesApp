
//  DetailViewController.m
//  Zemoga Obj-c
//
//  Created by Santiago Avila Arroyave on 2/28/16.
//  Copyright © 2016 Santiago Avila Arroyave. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(Message *)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        _viewModel = [[DetailViewModel alloc] initWithMessage:_detailItem];
        [self configureView];
    }
}

/**
 *  Update the user interface for the message item.
 */
- (void)configureView {
    if (self.detailItem) {
        _detailDescriptionLabel.text = _viewModel.subjectText;
        _messageLabel.text = _viewModel.messageText;
    }
    [AppAppearance setNavigationBarApperanceTo:self.navigationController.navigationBar];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end