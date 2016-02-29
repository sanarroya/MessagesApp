//
//  Message.m
//  Zemoga Obj-c
//
//  Created by Santiago Avila Arroyave on 2/29/16.
//  Copyright © 2016 Santiago Avila Arroyave. All rights reserved.
//

#import "Message.h"

@implementation Message

/**
 *  Initializes a Message from a MessageModelMapping
 *
 *  @param message The mapping object to initialize the object
 *
 *  @return Message initialize with mapping object values
 */
- (instancetype)initWithMessage:(MessageModelMapping *)message {
    self = [super init];
    _subject = message.title;
    _message = message.message;
    _unread = message.unread;
    
    return self;
}


@end
