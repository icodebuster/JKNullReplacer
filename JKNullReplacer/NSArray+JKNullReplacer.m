//
//  NSArray+JKNullReplacer.m
//  JKNullReplacer
//
//  Created by Jobin Kurian on 14/03/14.
//  Copyright (c) 2014 Jobin Kurian. All rights reserved.
//

#import "NSArray+JKNullReplacer.h"
#import "NSDictionary+JKNullReplacer.h"

@implementation NSArray (JKNullReplacer)

- (NSArray *)arrayWithoutNulls
{
    NSMutableArray *replacedArray = [self mutableCopy];
    const id nullValue = [NSNull null];
    const NSString *blankString = @"";
    
    for (int idx = 0; idx < [replacedArray count]; idx++) {
        id object = [replacedArray objectAtIndex:idx];
        
        if (object == nullValue)
            [replacedArray replaceObjectAtIndex:idx withObject:blankString];
        
        else if ([object isKindOfClass:[NSDictionary class]])
            [replacedArray replaceObjectAtIndex:idx withObject:[object dictionaryWithoutNulls]];
        
        else if ([object isKindOfClass:[NSArray class]])
            [replacedArray replaceObjectAtIndex:idx withObject:[object arrayWithoutNulls]];
    }
    return [replacedArray copy];
}

@end
