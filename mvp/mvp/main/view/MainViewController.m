//
//  MainViewController.m
//  mvp
//
//  Created by congqizhu on 7/15/16.
//  Copyright © 2016 YFSS. All rights reserved.
//

#import "MainViewController.h"
#import "MainViewControllerDelegate.h"
#import "MainViewControllerPresenterDelegate.h"
#import "MainViewControllerPresenter.h"
#import "User.h"

@interface MainViewController ()<MainViewControllerDelegate>
{
    id<MainViewControllerPresenterDelegate, UITableViewDataSource, UITableViewDelegate> _presenter;
    User *_user;
}
@end

@implementation MainViewController

- (id)initWithUser:(User *)user
{
    self = [super init];
    if (self) {
        _user = user;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _presenter = [[MainViewControllerPresenter alloc] initWithDelegate:self];
    
    UITableView *table = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:table];
    table.delegate = _presenter;
    table.dataSource = _presenter;
    
    [_presenter loadData];
}


- (NSString *)title
{
    return @"MainVc";
}

- (User *)user
{
    return _user;
}

@end
