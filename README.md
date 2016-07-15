# mvp

Model-View-Presenter

![image](https://raw.githubusercontent.com/YFSS/mvp-demo/master/mvp.jpg)

```
.
├── login =>组件
│   ├── delegate =>组件代理
│   │   ├── LoginViewControllerDelegate.h => view代理,完成view的数据桥接
│   │   └── LoginViewControllerPresenterDelegate.h =>Presenter代理,链接View
│   ├── model 组件 Model
│   │   ├── User.h
│   │   └── User.m
│   ├── presenter =>组件的Presenter
│   │   ├── LoginViewControllerPresenter.h =>Presenter实现
│   │   └── LoginViewControllerPresenter.m
│   └── view
│       ├── LoginViewController.h =>运行时链接Presenter并借助Presenter完成业务
│       └── LoginViewController.m
...其他组件
└── main
    ├── delegate
    │   ├── MainViewControllerDelegate.h
    │   └── MainViewControllerPresenterDelegate.h
    ├── model
    │   ├── Item.h
    │   └── Item.m
    ├── presenter
    │   ├── MainViewControllerPresenter.h
    │   └── MainViewControllerPresenter.m
    └── view
        ├── ItemTableViewCell.h
        ├── ItemTableViewCell.m
        ├── MainViewController.h
        └── MainViewController.m       
```