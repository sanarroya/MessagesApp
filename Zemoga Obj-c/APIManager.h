//
//  APIManager.h
//  Pokedex
//
//  Created by Santiago Avila Arroyave on 12/1/15.
//  Copyright © 2015 Santiago Avila Arroyave. All rights reserved.
//

#import "SessionManager.h"
#import <Mantle/Mantle.h>
#import "ResponseModelMapping.h"
#import "Message.h"

@interface APIManager : SessionManager
- (NSURLSessionDataTask *) getMessagesWithSuccess:(void (^)(NSMutableArray *messages)) success failure:(void(^)(NSError *error))failure;
@end
