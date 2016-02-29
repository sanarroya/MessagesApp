//
//  Message.h
//  Zemoga Obj-c
//
//  Created by Santiago Avila Arroyave on 2/29/16.
//  Copyright © 2016 Santiago Avila Arroyave. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MessageModelMapping.h"

@interface Message : NSObject

@property(nonatomic, strong) NSString *subject;
@property(nonatomic, strong) NSString *message;
@property(nonatomic) BOOL unread;

- (instancetype)initWithMessage:(MessageModelMapping *)message;

@end
