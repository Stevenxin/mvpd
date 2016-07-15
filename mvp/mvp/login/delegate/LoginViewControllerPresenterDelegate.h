//
//  LoginViewControllerPresenterDelegate.h
//  mvp
//
//  Created by congqizhu on 7/15/16.
//  Copyright © 2016 YFSS. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Presenter And Data Logic Delegate
 */
@protocol LoginViewControllerDelegate;
@protocol LoginViewControllerPresenterDelegate <NSObject>

- (id)initWithDelegate:(id<LoginViewControllerDelegate>)delegate;

- (void)login;

@end
