//
//  DetailViewModel.m
//  Zemoga Obj-c
//
//  Created by Santiago Avila Arroyave on 2/28/16.
//  Copyright © 2016 Santiago Avila Arroyave. All rights reserved.
//

#import "DetailViewModel.h"

@implementation DetailViewModel

/**
 *  Initializes the view model
 *
 *  @param newMessage Message to initialize the view model
 *
 *  @return View model with the current message information
 */
- (instancetype)initWithMessage:(Message *)newMessage {
    self = [super init];
    if (!self) return nil;
    if(_message != newMessage) {
        _message = newMessage;
        _subjectText = _message.subject;
        _messageText = _message.message;
    }
    
    return self;
}

@end
