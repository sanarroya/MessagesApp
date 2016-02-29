//
//  DetailViewModel.h
//  Zemoga Obj-c
//
//  Created by Santiago Avila Arroyave on 2/28/16.
//  Copyright © 2016 Santiago Avila Arroyave. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Message.h"

@interface DetailViewModel : NSObject

@property (nonatomic, readonly) Message *message;
@property (nonatomic, readonly) NSString *subjectText;
@property (nonatomic, readonly) NSString *messageText;

- (instancetype)initWithMessage:(Message *)message;

@end
