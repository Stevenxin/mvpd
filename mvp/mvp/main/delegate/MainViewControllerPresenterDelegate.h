//
//  MainViewControllerPresenterDelegate.h
//  mvp
//
//  Created by congqizhu on 7/15/16.
//  Copyright © 2016 YFSS. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MainViewControllerDelegate;
@protocol MainViewControllerPresenterDelegate <NSObject>

- (id)initWithDelegate:(id<MainViewControllerDelegate>)delegate;

- (void)loadData;

@end
