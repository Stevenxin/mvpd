//
//  MainViewControllerPresenter.h
//  mvp
//
//  Created by congqizhu on 7/15/16.
//  Copyright © 2016 YFSS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MainViewControllerPresenterDelegate.h"
#import <UIKit/UIKit.h>

@interface MainViewControllerPresenter : NSObject<MainViewControllerPresenterDelegate, UITableViewDelegate, UITableViewDataSource>

@end
