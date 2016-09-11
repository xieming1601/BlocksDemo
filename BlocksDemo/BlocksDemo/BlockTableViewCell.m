//
//  BlockTableViewCell.m
//  BlocksDemo
//
//  Created by xsm on 16/9/11.
//  Copyright © 2016年 xsm. All rights reserved.
//

#import "BlockTableViewCell.h"

@implementation BlockTableViewCell

@synthesize myLabel;
@synthesize myButton;
@synthesize ButtonBlock;

//- (void)awakeFromNib {
//    [super awakeFromNib];
//    // Initialization code
//}
-(instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        
        self.myLabel = [[UILabel alloc] init];
        
        [self addSubview:self.myLabel];
        // 给mylabel添加约束
        [self.myLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            // 添加大小约束
            make.size.mas_equalTo(CGSizeMake(50, 50));
            
            // 添加垂直局中约束
            make.centerY.mas_equalTo(self);
            
            
            make.left.mas_offset(20);
            
        }];
        
        self.myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.myButton setTitle:@"点击跳转" forState:UIControlStateNormal];
        [self.myButton addTarget:self action:@selector(jumpNewView:) forControlEvents:UIControlEventTouchUpInside];
//        self.myButton
        [self addSubview:self.myButton];
        
        // 给mylabel添加约束
        [self.myButton mas_makeConstraints:^(MASConstraintMaker *make) {
            // 添加大小约束
            make.size.mas_equalTo(CGSizeMake(100, 30));
            
            // 添加垂直局中约束
            make.centerY.mas_equalTo(self);
            
            // 添加距离右侧的约束
            make.right.mas_equalTo(-20);
            
        }];
        
    }
    return self;
}

-(void) jumpNewView:(id) sender{
    
    //Block的调用
    if(ButtonBlock){
        ButtonBlock(self.myLabel.text);
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
