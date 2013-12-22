//
//  BLObjectManager.m
//  Safe_Block
//
//  Created by 蔡 雪钧 on 12/22/13.
//  Copyright (c) 2013 cxjwin. All rights reserved.
//

#import "BLObjectManager.h"

@implementation BLObjectManager

static NSMutableSet *_set = nil;

+ (NSMutableSet *)defaultSet
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _set = [[NSMutableSet alloc] init];
    });
    return _set;
}

@end
