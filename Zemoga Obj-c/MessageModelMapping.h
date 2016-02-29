//
//  Message.h
//  Zemoga Obj-c
//
//  Created by Santiago Avila Arroyave on 2/28/16.
//  Copyright © 2016 Santiago Avila Arroyave. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface MessageModelMapping : MTLModel <MTLJSONSerializing>

@property(nonatomic, copy) NSString *title;
@property(nonatomic, copy) NSString *message;
@property(nonatomic) BOOL unread;

@end
