# BiliBiliMApp

![Platform](https://img.shields.io/badge/platform-iOS%2CiPadOS-blue.svg)
[![Release](https://img.shields.io/github/v/release/TouchFriend/BiliBiliMApp?color=brightgreen)](https://github.com/TouchFriend/BiliBiliMApp/releases)
![Support](https://img.shields.io/badge/support-bilibili%208.41.0+-blue.svg)

一个通过 **iOS 逆向分析** 实现的 **无广告版哔哩哔哩** 客户端，在保留原有功能的基础上，专注于 **广告移除与体验优化**。

---

## 👀 效果展示

![](Screenshot/combined_original_resolution.png)

![](Screenshot/3x_speed.PNG)

## 📌 项目说明

- 适用于 **非越狱设备**
- 基于哔哩哔哩官方 App 进行逆向分析与功能修改
- 仅修改客户端本地逻辑，不涉及任何服务器或接口行为

如果你在寻找 **越狱环境** 下的方案，可参考以下项目：

👉 [去除哔哩哔哩广告插件（越狱版）](https://github.com/TouchFriend/BiliBiliTweak)

---

## ✨ 功能特性

- 🚫 去除启动页、信息流、详情页等广告
- 👁️ 可选隐藏底部加号、会员购及「我的」中的不常用服务
- ⏩ 新增 **3 倍速播放功能**（仅限 `8.41.0`、`8.76.0` 版本）

---

## 🚀 快速体验（推荐）

1. 前往 [Releases](https://github.com/TouchFriend/BiliBiliMApp/releases) 页面
2. 下载已编译好的 `ipa` 文件
3. 由于 `ipa` 使用的是**官方包名**（`tv.danmaku.bilianime`），如果设备中已安装官方哔哩哔哩客户端：
   - **方案一：** 先卸载官方哔哩哔哩，再安装该 `ipa`
   - **方案二：** 修改包名后再安装，可与官方哔哩哔哩**同时存在**
4. 使用任意重签名工具安装到手机，例如：

- [iOS App Signer](https://github.com/DanTheMan827/ios-app-signer)
- [SideStore](https://sidestore.io)
- [Sideloadly](https://sideloadly.io/)
- [AltStore](https://altstore.io)

> 📱 适用于未越狱设备（需 Apple ID）

---

## 🛠️ 从源码构建（开发者）

### 1️⃣ 环境准备

- 安装 [MonkeyDev](https://github.com/AloneMonkey/MonkeyDev)
- `Clone` 本项目到本地：

```bash
git clone https://github.com/TouchFriend/BiliBiliMApp.git
```

---

### 2️⃣ 视图调试工具（可选）

项目默认使用 **Lookin** 查看视图层级，你也可以切换为 **Reveal**。

#### 使用 Lookin（默认）

1. 下载 [LookinServer.framework](https://github.com/QMUI/LookinServer)
2. 将其放入以下目录：

```text
/opt/MonkeyDev/Frameworks
```

#### 使用 Reveal

1. 打开 Xcode
2. 选择 `TARGETS` → `BiliBiliMDDylib`
3. 打开 `Build Settings`
4. 在 `Other Linker Flags` 中：
   - 将 `LookinServer` 修改为 `RevealServer`

---

### 3️⃣ 准备目标 App（脱壳）

你需要一个 **已脱壳** 的哔哩哔哩 App：

- 前往 [Releases](https://github.com/TouchFriend/BiliBiliMApp/releases)
- 下载 `bili-universal.app-xxx.zip`
- 解压后得到 `bili-universal.app`
- 将其放入以下目录：

```text
BiliBiliMApp/BiliBiliMD/TargetApp
```

> 你也可以自行脱壳官方 App，只需保证目录结构一致即可

---

### 4️⃣ 编译并运行

1. 使用 `Xcode` 打开工程
2. 选择真机设备
3. 编译并运行即可

---

## ⚙️ 设置

在**「我的 → 设置」**中提供多种配置选项，支持按需自由调整。

<img src="Screenshot/setting.PNG" style="zoom: 33%;" />



## 📚 参考资料

- [iOS逆向-哔哩哔哩增加3倍速播放（1）-最大播放速度](https://juejin.cn/post/7582063437414285350)

## ⚠️ 免责声明

- 本项目仅用于 **iOS 逆向工程学习与技术研究**
- 不得用于任何商业用途或非法用途
- 如涉及侵权问题，请联系作者删除相关内容

---

## ❤️ 致谢

感谢所有为 iOS 逆向生态做出贡献的开发者  
如果本项目对你有帮助，欢迎 Star ⭐️ 支持
