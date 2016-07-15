//
//  Item.h
//  mvp
//
//  Created by congqizhu on 7/15/16.
//  Copyright © 2016 YFSS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Item : NSObject

@property (nonatomic, copy) NSString *itemName;

@property (nonatomic, copy) NSString *itemDesc;

@property (nonatomic, retain) User *user;

@end
