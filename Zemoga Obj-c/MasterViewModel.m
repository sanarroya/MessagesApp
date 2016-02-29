//
//  MasterViewModel.m
//  Zemoga Obj-c
//
//  Created by Santiago Avila Arroyave on 2/28/16.
//  Copyright © 2016 Santiago Avila Arroyave. All rights reserved.
//

#import "MasterViewModel.h"

@implementation MasterViewModel

/**
 *  Initialize the view model
 *
 *  @return View model initialized with an empty NSMutableArray of messages
 */
- (id)init {
    self = [super init];
    if(!self) {
        return nil;
    }else {
        _messages = [NSMutableArray new];
        return self;
    }
}

/**
 *  Gets the messages from the backend
 *
 *  @return RACSignal to which the view controller will subscribe to change the data source of the table view
 */
- (RACSignal *) rac_getMessages {
    return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        [[APIManager sharedManager] getMessagesWithSuccess:^(NSMutableArray *messages) {
            _messages = messages;
            [subscriber sendNext:_messages];
            [subscriber sendCompleted];
        } failure:^(NSError *error) {
            [subscriber sendError:error];
        }];
        return nil;
    }];
}

@end
