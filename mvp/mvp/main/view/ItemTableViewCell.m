//
//  ItemTableViewCell.m
//  mvp
//
//  Created by congqizhu on 7/15/16.
//  Copyright © 2016 YFSS. All rights reserved.
//

#import "ItemTableViewCell.h"
#import "Item.h"

@interface ItemTableViewCell()
{
    UILabel *_name;
    UILabel *_desc;
}
@end

@implementation ItemTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _name = [[UILabel alloc] initWithFrame:CGRectZero];
        [self addSubview:_name];
        _desc = [[UILabel alloc] initWithFrame:CGRectZero];
        [self addSubview:_desc];
    }
    return self;
}

- (void)pushData:(Item *)data
{
    _name.text = data.itemName;
    _desc.text = [NSString stringWithFormat:@"desc:%@,username:%@",data.itemDesc, data.user.name];
    
    [self setNeedsLayout];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    _name.frame = CGRectMake(20, 10, 300, 20);
    _desc.frame = CGRectMake(20, 30, 300, 20);
}

@end
