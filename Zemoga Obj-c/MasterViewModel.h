//
//  MasterViewModel.h
//  Zemoga Obj-c
//
//  Created by Santiago Avila Arroyave on 2/28/16.
//  Copyright © 2016 Santiago Avila Arroyave. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveCocoa/ReactiveCocoa.h>
#import "APIManager.h"
#import "Message.h"
#import "MessageModelMapping.h"

@interface MasterViewModel : NSObject

@property(nonatomic) NSMutableArray *messages;
- (id) init;
- (RACSignal *) rac_getMessages;
@end
