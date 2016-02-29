//
//  MailTableViewCell.h
//  Zemoga Obj-c
//
//  Created by Santiago Avila Arroyave on 2/28/16.
//  Copyright © 2016 Santiago Avila Arroyave. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "indicatorDotView.h"
#import "Message.h"
#import "UIColor+Additions.h"

@protocol MailTableViewCellDelegate;

@interface MailTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet indicatorDotView *indicatorDotView;
@property (weak, nonatomic) IBOutlet UILabel *subjectLabel;
@property (weak, nonatomic) IBOutlet UILabel *messagePreviewLabel;
@property (weak, nonatomic) IBOutlet UIButton *dismissButton;
@property (weak) id <MailTableViewCellDelegate> delegate;

- (IBAction)dissmissMessageAction:(id)sender;
- (void)configureCellWithMessage:(Message *)message;

@end

@protocol MailTableViewCellDelegate <NSObject>
- (void)didTappedDismissButton:(MailTableViewCell *)cell;
@end

