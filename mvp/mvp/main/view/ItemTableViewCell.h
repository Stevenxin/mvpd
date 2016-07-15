//
//  ItemTableViewCell.h
//  mvp
//
//  Created by congqizhu on 7/15/16.
//  Copyright © 2016 YFSS. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Item;
@interface ItemTableViewCell : UITableViewCell

- (void)pushData:(Item *)data;

@end
