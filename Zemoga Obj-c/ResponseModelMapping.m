//
//  ResponseModelMapping.m
//  Zemoga Obj-c
//
//  Created by Santiago Avila Arroyave on 2/28/16.
//  Copyright © 2016 Santiago Avila Arroyave. All rights reserved.
//

#import "ResponseModelMapping.h"

@class MessageModelMapping;

@implementation ResponseModelMapping

/**
 *  Parse the JSON into a dictionary
 *
 *  @return Dictionary that specifies how the model object's model properties map to the keys in the JSON
 */
+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"messages": @"messages"
             };
}

+ (NSValueTransformer *)messagesJSONTransformer {
    return  [MTLJSONAdapter arrayTransformerWithModelClass:MessageModelMapping.class];
}

@end
