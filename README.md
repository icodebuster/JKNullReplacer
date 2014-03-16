JKNullReplacer
==============

A NSArray and NSDictionary Category to replace NSNull values from NSArray and NSDictionary.

### Adding JKNullReplacer to your project

Install via **Cocoapods**, add a line like the one below, in your Podfile:

**`pod 'JKNullReplacer', '~> 1.0.0'`**

Alternatively, you can clone this repository and add the files to your project

### Getting Started:

Just by **`#import JKNullReplacer.h`**

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
    
### License

This code is distributed under the terms and conditions of the MIT license.
