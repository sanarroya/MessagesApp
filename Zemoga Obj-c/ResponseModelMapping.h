//
//  ResponseModelMapping.h
//  Zemoga Obj-c
//
//  Created by Santiago Avila Arroyave on 2/28/16.
//  Copyright © 2016 Santiago Avila Arroyave. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "MessageModelMapping.h"

@interface ResponseModelMapping : MTLModel <MTLJSONSerializing>

@property(nonatomic, copy) NSArray *messages;

@end
