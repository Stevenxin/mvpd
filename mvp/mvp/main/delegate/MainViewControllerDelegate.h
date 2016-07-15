//
//  MainViewControllerDelegate.h
//  mvp
//
//  Created by congqizhu on 7/15/16.
//  Copyright © 2016 YFSS. All rights reserved.
//

#import <Foundation/Foundation.h>

@class User;
@protocol MainViewControllerDelegate <NSObject>

- (User *)user;

@end
