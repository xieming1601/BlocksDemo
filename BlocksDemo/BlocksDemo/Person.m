//
//  Person.m
//  BlocksDemo
//
//  Created by xsm on 16/9/10.
//  Copyright © 2016年 xsm. All rights reserved.
//

#import "Person.h"

@implementation Person


-(void) eat:( void(^)() ) block{
    block();
}

-(void (^)(int))run{
    return ^(int b){
        NSLog(@"跑了--%d米",b);
    };
}

@end
