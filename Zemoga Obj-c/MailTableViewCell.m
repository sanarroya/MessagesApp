//
//  MailTableViewCell.m
//  Zemoga Obj-c
//
//  Created by Santiago Avila Arroyave on 2/28/16.
//  Copyright © 2016 Santiago Avila Arroyave. All rights reserved.
//

#import "MailTableViewCell.h"


@implementation MailTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

/**
 *  Triggers the method defined in the delegate
 *
 *  @param sender Button that triggers the action
 */
- (IBAction)dissmissMessageAction:(id)sender {
    [_delegate didTappedDismissButton:self];
}

/**
 *  Configures the current cellForRowAtIndexPath
 *
 *  @param message Message object with status, description, subject and attachments
 */
- (void)configureCellWithMessage:(Message *)message {
    self.backgroundColor = [UIColor mailAppBlackColor];
    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [UIColor mailReadedColor];
    [self setSelectedBackgroundView:bgColorView];
    self.selectedBackgroundView = bgColorView;
    _indicatorDotView.backgroundColor = message.unread ? [UIColor blueColor] : [UIColor clearColor];
    _indicatorDotView.layer.cornerRadius = 7.5f;
    _indicatorDotView.layer.masksToBounds = YES;
    _subjectLabel.text = message.subject;
    _messagePreviewLabel.text = message.message;
}

@end
