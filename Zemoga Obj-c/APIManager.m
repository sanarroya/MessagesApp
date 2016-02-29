//
//  APIManager.m
//  Pokedex
//
//  Created by Santiago Avila Arroyave on 12/1/15.
//  Copyright © 2015 Santiago Avila Arroyave. All rights reserved.
//

#import "APIManager.h"

static NSString *const kMessagesEndpoint = @"/bins/54tf5";

@implementation APIManager

/**
 *  Gets the messages from the API
 *
 *  @param success Block to handle the success of the request
 *  @param failure Block to Handle the failure of the request
 *
 *  @return Request using AFNetworking
 */
- (NSURLSessionDataTask *) getMessagesWithSuccess:(void (^)(NSMutableArray *messages)) success failure:(void(^)(NSError *error))failure {
    
    return [self GET:kMessagesEndpoint
          parameters:nil
            progress:nil
             success:^(NSURLSessionDataTask *task, id responseObject) {
                 NSArray *responseArray = (NSArray *)responseObject;
                 NSDictionary *responseDictionary = @{@"messages": responseArray};
                 NSError *error;
                 ResponseModelMapping *list = [MTLJSONAdapter modelOfClass:ResponseModelMapping.class fromJSONDictionary:responseDictionary error:&error];
                 NSMutableArray *messages = [[NSMutableArray alloc] init];
                 for(MessageModelMapping *messageMapping in list.messages) {
                     Message *message = [[Message alloc] initWithMessage:messageMapping];
                     [messages addObject:message];
                 }
                 success(messages);
            }
            failure:^(NSURLSessionDataTask *task, NSError *error) {
                failure(error);
    }];
}

@end
