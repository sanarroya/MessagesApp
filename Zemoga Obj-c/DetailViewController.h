//
//  DetailViewController.h
//  Zemoga Obj-c
//
//  Created by Santiago Avila Arroyave on 2/28/16.
//  Copyright © 2016 Santiago Avila Arroyave. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppAppearance.h"
#import "DetailViewModel.h"
#import "MessageModelMapping.h"

@interface DetailViewController : UIViewController

@property (nonatomic,retain) DetailViewModel *viewModel;
@property (strong, nonatomic) Message *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;

@end

