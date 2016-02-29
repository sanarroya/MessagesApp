//
//  SessionManager.h
//  Pokedex
//
//  Created by Santiago Avila Arroyave on 12/1/15.
//  Copyright © 2015 Santiago Avila Arroyave. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface SessionManager : AFHTTPSessionManager

+(id)sharedManager;

@end
