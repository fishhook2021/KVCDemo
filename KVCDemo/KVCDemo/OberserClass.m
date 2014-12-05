//
//  OberserClass.m
//  HelloWorld
//
//  Created by kyu on 14/11/23.
//  Copyright (c) 2014年 余康. All rights reserved.
//

#import "OberserClass.h"

@implementation OberserClass

- (void)setCount:(int)count{
    _count = count;
    [self  addObserver:self forKeyPath:@"count" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    if([keyPath isEqualToString:@"count"]){
        NSLog(@"内部调用 count is :%@", [change valueForKey:@"new"]);
    }
}

@end
