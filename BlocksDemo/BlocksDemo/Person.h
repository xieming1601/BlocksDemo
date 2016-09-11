//
//  Person.h
//  BlocksDemo
//
//  Created by xsm on 16/9/10.
//  Copyright © 2016年 xsm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic,copy) void (^myBlock)(int,int);

-(void) eat:( void(^)() ) block;

-(void (^)(int))run;

@end
