//
//  BLObject.m
//  Safe_Block
//
//  Created by 蔡 雪钧 on 12/21/13.
//  Copyright (c) 2013 cxjwin. All rights reserved.
//

#import "BLObject.h"
#import "BLObjectManager.h"

@implementation BLObject
{
    BLObject *weakSelf;
}

- (id)init
{
    self = [super init];
    if (self) {
        NSValue *pvalue = [NSValue valueWithPointer:(const void *)self];
        [[BLObjectManager defaultSet] addObject:pvalue];
    }
    return self;
}

- (void)dealloc
{
    NSValue *pvalue = [NSValue valueWithPointer:(const void *)self];
    [[BLObjectManager defaultSet] removeObject:pvalue];
    [super dealloc];
}

- (void)testLog
{
    NSLog(@"obj id is : %@", [BLObjectManager defaultSet]);
}

@end