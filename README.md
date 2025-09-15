# BiliBiliMApp
![Platform](https://img.shields.io/badge/platform-iOS%2CiPadOS-blue.svg) [![Release](https://img.shields.io/github/v/release/TouchFriend/BiliBiliMApp?color=brightgreen)](https://github.com/TouchFriend/BiliBiliMApp/releases)
![support](https://img.shields.io/badge/support-bilibili%208.41.0+-blue.svg)


无广告版哔哩哔哩

越狱手机版本：[去除哔哩哔哩广告插件](https://github.com/TouchFriend/BiliBiliTweak)

## 快速使用

去[Releases](https://github.com/TouchFriend/BiliBiliMApp/releases)页面下载`ipa`包

使用侧载工具安装`ipa`包，比如：

- [SideStore](https://sidestore.io)
- [AltStore](https://altstore.io)

## 如何安装

- 安装[MonkeyDev](https://github.com/AloneMonkey/MonkeyDev)
- 项目使用`Lookin`查看视图层级，当然你也可以选择使用`Reveal`
  - 如果使用[Lookin](https://lookin.work/)，下载`Lookin`的[LookinServer.framework](https://github.com/QMUI/LookinServer)，放到`/opt/MonkeyDev/Frameworks`目录
  - 如果使用[Reveal](https://revealapp.com/)，那么修改`Xcode`工程，`TARGETS` => `BiliBiliMDDylib` => `Build Settings` => `Other Linker Flags`，将`LookinServer`改为`Reveal`

- 拷贝`BiliBiliMApp`仓库到本地

```
git clone https://github.com/TouchFriend/BiliBiliMApp.git
```

## 如何使用

- 将**脱壳**的`bili-universal.app`放入`BiliBiliMApp/BiliBiliMD/TargetApp`目录中

- 打开`Xcode`，编译运行


## 技术交流

Telegram: https://t.me/Qwer6us28FuckAd

## 声明

此项目是个人为了兴趣而开发, 仅用于学习和测试

侵权联系本人删除

感谢使用

