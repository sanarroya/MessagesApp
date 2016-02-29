//
//  SessionManager.m
//  Pokedex
//
//  Created by Santiago Avila Arroyave on 12/1/15.
//  Copyright © 2015 Santiago Avila Arroyave. All rights reserved.
//

#import "SessionManager.h"

static NSString *url = @"https://api.myjson.com";

@implementation SessionManager

/**
 *  Initialize the session manager, configure the request and response serializers
 *
 *  @return Session manager iwth the request and response serializers setted
 */
-(id)init{
    self = [super initWithBaseURL:[NSURL URLWithString:url]];
    if(!self) return nil;
    
    self.requestSerializer = [AFJSONRequestSerializer serializer];
    self.responseSerializer = [AFJSONResponseSerializer serializer];
    
    return self;
    
}

/**
 *  Singleton
 *
 *  @return SessionManager singleton
 */
+ (id)sharedManager {
    static SessionManager *_sessionManager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sessionManager = [[self alloc] init];
    });
    
    return _sessionManager;
}

@end
