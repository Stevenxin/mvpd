//
//  LoginViewControllerPresenter.m
//  mvp
//
//  Created by congqizhu on 7/15/16.
//  Copyright © 2016 YFSS. All rights reserved.
//

#import "LoginViewControllerPresenter.h"
#import "LoginViewControllerDelegate.h"
#import "User.h"

@interface LoginViewControllerPresenter()
{
    id<LoginViewControllerDelegate> _delegate;
}
@end

@implementation LoginViewControllerPresenter

- (id)initWithDelegate:(id<LoginViewControllerDelegate>)delegate
{
    self = [super init];
    if (self) {
        _delegate = delegate;
    }
    return self;
}

#pragma mark - LoginViewControllerDelegate

- (void)login
{
    if (_delegate == nil) {
        return;
    }
    
    NSString *username = [_delegate username];
    NSString *password = [_delegate password];
    
    
    NSLog(@"username %@", username);
    NSLog(@"password %@", password);
    
    // 登录成功之后
    User *user = [[User alloc] init];
    user.address = @"北京";
    user.name = username;
    user.uid = 123;
    
    //save to db or other location
    
    //update ui
    
    [_delegate updateUI:user];
}

@end
