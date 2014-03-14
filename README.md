JKNullReplacer
==============

A NSArray and NSDictionary Category to replace NSNull values from NSArray and NSDictionary.

###How to use ?

just import **JKNullReplacer.h**

####For removing NSNull values from a dictionary.

    [yourDictionary dictionaryWithoutNulls];

####For removing NSNull values from an array.    
    
    [yourArray arrayWithoutNulls];

####Dictionary Example:

    NSMutableDictionary *dic1 = [NSMutableDictionary dictionary];
    [dic1 setObject: @"String One" forKey: @"key1"];
    [dic1 setObject: [NSNull null] forKey: @"key2"];
    
    NSMutableDictionary *dic2 = [NSMutableDictionary dictionary];
    [dic2 setObject: @"String Two" forKey: @"key4"];
    [dic2 setObject: [NSNull null] forKey: @"key5"];
    
    [dic1 setObject: dic2 forKey: @"key3"];
    
    NSLog(@"%@", dic1);
    NSLog(@"%@", [dic1 dictionaryWithoutNulls]);
