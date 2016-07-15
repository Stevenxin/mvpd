//
//  MainViewControllerPresenter.m
//  mvp
//
//  Created by congqizhu on 7/15/16.
//  Copyright © 2016 YFSS. All rights reserved.
//

#import "MainViewControllerPresenter.h"
#import "MainViewControllerDelegate.h"
#import "Item.h"
#import "ItemTableViewCell.h"

@interface MainViewControllerPresenter()
{
    id<MainViewControllerDelegate> _delegate;
    NSMutableArray *_data;
}
@end

@implementation MainViewControllerPresenter

#pragma mark - Presenter Delegate

- (id)initWithDelegate:(id<MainViewControllerDelegate>)delegate
{
    self = [super init];
    if (self) {
        _delegate = delegate;
        _data = [NSMutableArray array];
    }
    return self;
}

- (void)loadData
{
    if (_delegate == nil) {
        return;
    }
    
    User *user = [_delegate user];
    
    for (int idx = 0; idx < 100; idx++) {
        Item *item = [[Item alloc] init];
        item.user = user;
        item.itemName = [NSString stringWithFormat:@"itemName%d",idx];
        item.itemDesc = [NSString stringWithFormat:@"itemDesc%d",idx];
        [_data addObject:item];
    }
}

#pragma mark - UITableView Delegate

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ider = @"ider";
    
    ItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ider];
    if (cell == nil) {
        cell =
        [[ItemTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ider];
    }
    
    Item *currentItem = [_data objectAtIndex:indexPath.row];
    [cell pushData:currentItem];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _data.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80.0;
}

@end
