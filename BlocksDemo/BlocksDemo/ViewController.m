//
//  ViewController.m
//  BlocksDemo
//
//  Created by xsm on 16/9/10.
//  Copyright © 2016年 xsm. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "BlockTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.title = @"BlockDemo";
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"Block代替代理的应用场景" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(JumpToTableView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    // 给btn添加约束
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        // 添加大小约束
        make.size.mas_equalTo(CGSizeMake(200, 30));
        
        //添加局中约束
        make.center.mas_equalTo(self.view);
        
    }];
    
//    [self TestMyBlockVar];
//    [self TestMyPersonBlock];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) TestMyBlockVar{
    
    //Block变量的使用方法
    int (^myBlock)(int,int) = ^(int num1,int num2){
        return num1 + num2;
    };
    
    int sum = myBlock(3,5);
    NSLog(@"%d",sum);
    
}

-(void) TestMyPersonBlock{
//    int a = 11;
//    int b = 12;
    Person* p = [[Person alloc] init];
    
    //block作为类变量
//    p.myBlock(a,b);
    
    //block作为函数参数
    [p eat:^{
        NSLog(@"吃东西");
    }];
    
    //block作为函数返回值
    p.run(5);
    
}

-(void) JumpToTableView:(id) sender{
    BlockTableViewController* tableView = [[BlockTableViewController alloc] init];
    [self.navigationController pushViewController:tableView animated:YES];
}

@end
