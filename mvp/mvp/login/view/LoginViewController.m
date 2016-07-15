//
//  LoginViewController.m
//  mvp
//
//  Created by congqizhu on 7/15/16.
//  Copyright © 2016 YFSS. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginViewControllerDelegate.h"
#import "LoginViewControllerPresenter.h"
#import "MainViewController.h"

@interface LoginViewController ()<LoginViewControllerDelegate>
{
    id<LoginViewControllerPresenterDelegate> _presenter;
    
    UITextField *_username;
    UITextField *_password;
}
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _username = [[UITextField alloc] init];
    _username.frame = CGRectMake(100, 80, 300, 20);
    _username.placeholder = @"用户名";
    _username.text = @"BruceZCQ";
    [self.view addSubview:_username];
    
    
    _password = [[UITextField alloc] init];
    _password.frame = CGRectMake(100, 200, 300, 20);
    _password.placeholder = @"密码";
    [self.view addSubview:_password];
    
    _presenter = [[LoginViewControllerPresenter alloc] initWithDelegate:self];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 400, 100, 100);
    button.backgroundColor = [UIColor redColor];
    
    [button addTarget:_presenter action:@selector(login)
     forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

- (NSString *)title
{
    return @"loginVc";
}

- (NSString *)username
{
    return _username.text;
}

- (NSString *)password
{
    return _password.text;
}

- (void)updateUI:(User *)user
{
    NSLog(@"处理完成更新 UI");
    
    MainViewController *mainVc = [[MainViewController alloc] initWithUser:user];
    
    [self.navigationController pushViewController:mainVc animated:YES];
}

@end
