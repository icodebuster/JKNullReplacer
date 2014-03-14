//
//  NSDictionary+JKNullReplacer.m
//  JKNullReplacer
//
//  Created by Jobin Kurian on 14/03/14.
//  Copyright (c) 2014 Jobin Kurian. All rights reserved.
//

#import "NSDictionary+JKNullReplacer.h"
#import "NSArray+JKNullReplacer.h"

@implementation NSDictionary (JKNullReplacer)

- (NSDictionary *)dictionaryWithoutNulls
{
    const NSMutableDictionary *replacedDictionary = [self mutableCopy];
    const id nullValue = [NSNull null];
    const NSString *blankString = @"";
    
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        id object = [self objectForKey:key];
        
        if (object == nullValue)
            [replacedDictionary setObject:blankString forKey:key];
        
        else if ([object isKindOfClass:[NSDictionary class]])
            [replacedDictionary setObject:[object dictionaryWithoutNulls] forKey:key];
        
        else if ([object isKindOfClass:[NSArray class]])
            [replacedDictionary setObject:[object arrayWithoutNulls] forKey:key];
    }];
    
    return [NSDictionary dictionaryWithDictionary:[replacedDictionary copy]];
}

@end
