//
//  ViewController.m
//  KVCDemo
//
//  Created by kyu on 14/11/23.
//  Copyright (c) 2014年 kyu. All rights reserved.
//

#import "ViewController.h"
#import "OberserClass.h"
@interface ViewController ()
{
    OberserClass *cls;
    NSString *str1;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //section 1
//    [self addObserver:self forKeyPath:@"str1" options:NSKeyValueObservingOptionNew context:nil];//第一步
//    [self setValue:@"草泥马KVO" forKey:@"str1"];//第二步
    
    //section 2
//    cls = [[OberserClass alloc]init];
//    [cls addObserver:self forKeyPath:@"count" options:NSKeyValueObservingOptionNew context:nil];
//    cls.count = 123;
    
    //section 3
    cls = [[OberserClass alloc]init];
    cls.count = 123;
    cls.count = 456;
    
    
}


//delegate method
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    if([keyPath isEqualToString:@"count"]){
        NSLog(@"外部调用 count : %@",[change valueForKey:@"new"]);
    }
    
    if([keyPath isEqualToString:@"str1"]){
        NSLog(@"外部调用 str1: %@",[change valueForKey:@"new"]);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
