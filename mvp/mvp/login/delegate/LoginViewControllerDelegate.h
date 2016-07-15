//
//  LoginViewControllerDelegate.h
//  mvp
//
//  Created by congqizhu on 7/15/16.
//  Copyright © 2016 YFSS. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 UI Delegate
 */
@class User;
@protocol LoginViewControllerDelegate <NSObject>

- (NSString *)username;

- (NSString *)password;

- (void)updateUI:(User *)user;

@end
