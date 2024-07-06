<h1 align="center">
  <img src="docs/logo.png" alt="Clash" width="200">
  <br>Clash<br>
</h1>


<h4 align="center">A rule-based tunnel in Go.</h4>

<p align="center">
  <a href="https://github.com/deadmau5v/clash-core/actions">
    <img src="https://img.shields.io/github/actions/workflow/status/pfugwtg/clash-core/release.yml?branch=master&style=flat-square" alt="Github Actions">
  </a>
  <a href="https://goreportcard.com/report/github.com/deadmau5v/clash-core">
    <img src="https://goreportcard.com/badge/github.com/deadmau5v/clash-core?style=flat-square">
  </a>
  <img src="https://img.shields.io/github/go-mod/go-version/pfugwtg/clash-core?style=flat-square">
  <a href="https://github.com/deadmau5v/clash-core/releases">
    <img src="https://img.shields.io/github/release/pfugwtg/clash-core/all.svg?style=flat-square">
  </a>
  <a href="https://github.com/deadmau5v/clash-core/releases/tag/premium">
    <img src="https://img.shields.io/badge/release-Premium-00b4f0?style=flat-square">
  </a>
</p>

## 此仓库说明

- 修改了 GeoLite2-Country.mmdb 下载地址为自己的CDN

## 功能

这是 Clash 提供的功能概述。

- 入站: HTTP, HTTPS, SOCKS5 服务器, TUN 设备
- 出站: Shadowsocks(R), VMess, Trojan, Snell, SOCKS5, HTTP(S), Wireguard
- 基于规则的路由: 动态脚本, 域名, IP 地址, 进程名等
- 假 IP DNS: 减少 DNS 污染的影响并提高网络性能
- 透明代理: 使用自动路由表/规则管理重定向 TCP 和 TProxy TCP/UDP
- 代理组: 自动回退, 负载均衡或延迟测试
- 远程提供者: 动态加载远程代理列表
- RESTful API: 通过全面的 API 就地更新配置

*部分功能可能仅在 [Premium core](https://dreamacro.github.io/clash/premium/introduction.html) 中可用。*

## 编译

### 依赖

- Go >= 1.20
- make

### 编译

- 打开 `Makefile`;

- 修改40行，修改或添加目标平台;

- 打开命令行

  ```bash
   cd {PATH}/clash-core
   make
  ```

- 编译后的包在文件夹 `{PATH}/clash-core/bin/` 中

#### 使用说明

- config.yaml 文件内容可通过 Clash for Windows 等客户端获取，步骤：

  - 点击 “Profiles”
  - 选中配置文件，右键，选择 “Edit” 或 “Edit externally”
  - 全选复制文件内容
  - 粘贴到 config.yaml

- 通过 curl 命令获取配置文件

  - curl https://example.com/xxxxxxx -o /root/.config/clash/config.yaml

- clash 运行起来后，可能还是无法使用，需要设置代理：

  - 开启（永久生效则将代码放入 ~/.profile 末尾）：
    - export http_proxy=http://127.0.0.1:7890
    - export https_proxy=http://127.0.0.1:7890
  - 关闭：
    - unset http_proxy
    - unset https_proxy
  
## 文档

- [简介](docs/zh_CN/index.md)

- [编译安装](docs/zh_CN/introduction/getting-started.md)
- [Clash 服务运行](docs/zh_CN/introduction/service.md)
- [配置文件说明](docs/zh_CN/configuration/getting-started.md)
  - [参考配置](docs/zh_CN/configuration/configuration-reference.md)

## 鸣谢

- [riobard/go-shadowsocks2](https://github.com/riobard/go-shadowsocks2)
- [v2ray/v2ray-core](https://github.com/v2ray/v2ray-core)
- [WireGuard/wireguard-go](https://github.com/WireGuard/wireguard-go)

## 许可证

This software is released under the GPL-3.0 license.

