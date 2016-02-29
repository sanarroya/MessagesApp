//
//  MasterViewController.h
//  Zemoga Obj-c
//
//  Created by Santiago Avila Arroyave on 2/28/16.
//  Copyright © 2016 Santiago Avila Arroyave. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MasterViewModel.h"
#import "AppAppearance.h"
#import "MailTableViewCell.h"

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (nonatomic,retain) MasterViewModel *viewModel;

@end

