# 06UIWindow

我们这里需要注意的是 那个info.plist文件 <br/>
![img](https://github.com/xuhuawei131/06UIWindow/blob/master/ScreenShots/uiwindow.png)<br/>
我们删除 main storyboard base file name－》Main<br/>
这表示 我们接下来 将自己代码 实现布局 不使用拖拽的方式<br/>
因为系统加载的时候 读取info.plist文件 默认的会去加载Main.storyboard 故事版作为我们的主界面

IOS中 本质还是c语言 所以在main文件中 方法入口还是main方法<br/>
![img](https://github.com/xuhuawei131/06UIWindow/blob/master/ScreenShots/uiwindow_appdelegate.png)<br/>
第三个参数为nil的处理办法
![img](https://github.com/xuhuawei131/06UIWindow/blob/master/ScreenShots/viewcontroler_main.png)<br/>

特别注意的是 UIApplicationMain类中 她的代理 AppDelegate 里面有应用的生命周期回调<br/>

![img](https://github.com/xuhuawei131/06UIWindow/blob/master/ScreenShots/application_delegate.png)<br/>

所以我们初始化的时候 放在这里<br/>
![img](https://github.com/xuhuawei131/06UIWindow/blob/master/ScreenShots/uiwindow_appdelegate_inner.png)<br/>
我们可以自己去指定我们的 ViewControler 也可以自己去添加view到uiwindow<br/>
