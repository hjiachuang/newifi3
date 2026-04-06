# Actions-OpenWrt

- 作者: [P3TERX](https://github.com/P3TERX)
- Coder: [P3TERX](https://github.com/P3TERX)
- 使用GitHub Actions在线编译OpenWrt固件
- Compile OpenWrt firmware online using GitHub Actions

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Forks&logo=github)

## 使用方法/Usage

- fork这个仓库到您自己的仓库去。
- 自行搭建开发环境，创建自己的 `.config` 文件。
  - 本项目使用的是[Lede](https://github.com/coolsnowwolf/lede)源码，分支是`master`。
  - TIPS: 关于编译环境的搭建，推荐去看`P3TERX`之前写的相关文章，Win­dows 10 可以使用 [WSL](https://p3terx.com/archives/compiling-openwrt-with-wsl.html) ，ma­cOS、Linux 可以使用 [Docker](https://p3terx.com/archives/build-openwrt-with-docker.html)。 —— P3TERX
- 将您生成的`.config`文件提交到GitHub仓库。
- 根据自己的需要提交自己DIY的`feeds.conf.default`文件到GitHub仓库。（可选）
- 根据自己的需要修改脚本: `diy-part1.sh`和`diy-part2.sh`。（可选）
- 在Actions页面中选择`Build OpenWrt`选项。
- 点那个`Run workflow`按钮。
- 编译成功后，在您编译的工作流最下面的`Artifacts`和`Release`就可以看到打包好的固件，点后面的下载即可。
  - TIPS: 上传到`Release`的功能需要在build-opewrt.yml中将环境变量`UPLOAD_RELEASE`设置为`true`，但是目前运行会报错，所以我关了它。

- Fork this repository to your own repository.
- Set up a development environment by yourself and create your own `.config` file.
  - This project utilizes the source code of [Lede](https://github.com/coolsnowwolf/lede), with the branch being `master`.
  - TIPS: For setting up the compilation environment, it is recommended to refer to the relevant articles previously written by `P3TERX`. For Windows 10, [WSL](https://p3terx.com/archives/compiling-openwrt-with-wsl.html) can be used. For macOS and Linux, [Docker](https://p3terx.com/archives/build-openwrt-with-docker.html) can be used. —— P3TERX
- Push `.config` file to the GitHub repository.
- Submit your DIY `feeds.conf.default` file to the GitHub repository according to your needs.(Optional)
- Modify the scripts according to your needs: `diy-part1.sh` and `diy-part2.sh`.(Optional)
- Select `Build OpenWrt` on the Actions page.
- Click the `Run workflow` button.
- When the build is complete, click the `Artifacts` button in the upper right corner of the Actions page to download the binaries.

## 提示/Tips

- 我在原作者的基础上删掉了上传固件到`奶牛快传`和`WeTransfer`，因为我用不上，直接在工作流和Release中也能下载到编译好的固件。
- 创建`.config`文件和构建OpenWrt固件可能需要很长时间。因此，在创建存储库以构建自己的固件之前，您可以通过在GitHub中[搜索`Actions-Openwrt`](https://github.com/search?q=Actions-openwrt)来查看是否已有其他人构建了符合您需求的固件。
- 在您的仓库介绍中添加一些关于您构建的固件的元信息（如固件架构和已安装的包），这将节省其他人的时间。

- Based on the original author's work, I have removed the instructions for uploading firmware to 'Cow Transfer' and 'WeTransfer', as I don't need them. The compiled firmware can be downloaded directly from the workflow and Release.
- It may take a long time to create a `.config` file and build the OpenWrt firmware. Thus, before create repository to build your own firmware, you may check out if others have already built it which meet your needs by simply [search `Actions-Openwrt` in GitHub](https://github.com/search?q=Actions-openwrt).
- Add some meta info of your built firmware (such as firmware architecture and installed packages) to your repository introduction, this will save others' time.

## 鸣谢/Credits

- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub Actions](https://github.com/features/actions)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [tmate](https://github.com/tmate-io/tmate)
- [mxschmitt/action-tmate](https://github.com/mxschmitt/action-tmate)
- [csexton/debugger-action](https://github.com/csexton/debugger-action)
- [Mikubill/transfer](https://github.com/Mikubill/transfer)
- [softprops/action-gh-release](https://github.com/softprops/action-gh-release)
- [ActionsRML/delete-workflow-runs](https://github.com/ActionsRML/delete-workflow-runs)
- [dev-drprasad/delete-older-releases](https://github.com/dev-drprasad/delete-older-releases)
- [peter-evans/repository-dispatch](https://github.com/peter-evans/repository-dispatch)

## License

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © [**P3TERX**](https://p3terx.com)
