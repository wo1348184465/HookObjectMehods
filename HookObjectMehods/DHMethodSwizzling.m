//
//  DHMethodSwizzling.m
//  HookObjectMehods
//
//  Created by 小伍 on 15-7-3.
//  Copyright (c) 2015年 小伍. All rights reserved.
//

#import "DHMethodSwizzling.h"
#import <objc/runtime.h>
#import <UIKit/UIKit.h>
@implementation DHMethodSwizzling
+ (void)load
{
    // 获取要修改的类
    Class systemClass = [UIButton class];
    // 设置要hook掉的目标方法
    SEL selSystem = @selector(setTitle:forState:);
    // 设置自己自定义的方法
    SEL selCustom = @selector(hook_setTitle:orState:);
    
    // 获取系统的实例方法
    Method method_System = class_getInstanceMethod(systemClass, selSystem);
    
    // 获取自定义的实例方法
    Method method_Custom = class_getInstanceMethod([self class], selCustom);
    
    // 获取系统函数指针
    IMP impSystem = method_getImplementation(method_System);
    
    // 给类添加方法
    class_addMethod(systemClass, selCustom, impSystem, method_getTypeEncoding(method_System));
    
    // 获取自定义函数指针
    IMP impCustom = method_getImplementation(method_Custom);
    
    // 	替换类方法的实现
    class_replaceMethod(systemClass, selSystem, impCustom, method_getTypeEncoding(method_System));
    
}


- (void)hook_setBackgroundColor:(UIColor *)color
{
    // 在ViewController中 两个Button的颜色分别是红色和蓝色 , 那么我们这里面给他们同意hook成黑色
    NSLog(@"替换");

    [self hook_setBackgroundColor:[UIColor blackColor]];
 
}

- (void)hook_setTitle:(NSString *)title orState:(UIControlState *)state
{
    NSLog(@"替换");
    // 把原来的button的标题改成了hook成功
    [self hook_setTitle:@"hook成功" orState:UIControlStateNormal];
}











@end
