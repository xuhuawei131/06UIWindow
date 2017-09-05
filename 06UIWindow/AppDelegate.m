//
//  AppDelegate.m
//  06UIWindow
//
//  Created by lingdian on 17/9/5.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//框架初始化 成功之后 调用此函数，此函数用来初始化整个程序框架结构的，对于ios程序员来说 是开发的入口
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    //创建一个uiwindows对象，整个应用只有一个UIWindow对象  在程序级别上 表示窗口屏幕
    //UIWindow也是继承UIView 的。是一个特殊的UIView。
    //UIScreen 是一个硬件信息的工具类 里面 有硬件的信息 比如设备的宽高等
    //mainScreen 获取主屏幕的设备信息
    //bounds 表示屏幕的宽高值
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    //创建一个视图控制器 作为UIWindow的根视图  相当于把视图控制器的view 添加到了 UIWindow
    self.window.rootViewController=[[UIViewController alloc]init];//
    //设置背景颜色
    [self.window setBackgroundColor:[UIColor blueColor]];
    
    UIView* view=[[UIView alloc]initWithFrame:CGRectMake(100, 100, 150, 150)];
    [view setBackgroundColor:[UIColor orangeColor]];

    UIView* parentView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 240, 360)];
    [parentView setBackgroundColor:[UIColor greenColor]];
    
    //view添加奥parentview 中作为他的一个子视图
    //那么view子视图 的坐标是参照parentview 父视图的坐标系
    //如果父视图的位置发生了变化  那么所有的子视图也会跟着变化
    [parentView addSubview:view];
    
    //添加一个parentView到windows上  这相当于第二个子view 第一个是UIViewController的view
    [self.window addSubview:parentView];
    
    
    //每一个view 都有一个 window属性 而且window都是同一个window 都是这个self.window
    //addview 的时候 会把window 赋值给我每个view的window
    NSLog(@"view window%@",view.window);
    
    NSLog(@"parentView window%@",parentView.window);
    
    NSLog(@"self window%@",self.window);
    
    NSLog(@"self window%@",self.window.rootViewController.view.window);
    
    
    //使UIWidows 有效果 并显示在屏幕上
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
