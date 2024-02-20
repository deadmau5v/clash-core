<h1 align="center">
  <img src="docs/logo.png" alt="Clash" width="200">
  <br>Clash<br>
</h1>


<h4 align="center">A rule-based tunnel in Go.</h4>

<p align="center">
  <a href="https://github.com/pfugwtg/clash-core/actions">
    <img src="https://img.shields.io/github/actions/workflow/status/pfugwtg/clash-core/release.yml?branch=master&style=flat-square" alt="Github Actions">
  </a>
  <a href="https://goreportcard.com/report/github.com/pfugwtg/clash-core">
    <img src="https://goreportcard.com/badge/github.com/pfugwtg/clash-core?style=flat-square">
  </a>
  <img src="https://img.shields.io/github/go-mod/go-version/pfugwtg/clash-core?style=flat-square">
  <a href="https://github.com/pfugwtg/clash-core/releases">
    <img src="https://img.shields.io/github/release/pfugwtg/clash-core/all.svg?style=flat-square">
  </a>
  <a href="https://github.com/pfugwtg/clash-core/releases/tag/premium">
    <img src="https://img.shields.io/badge/release-Premium-00b4f0?style=flat-square">
  </a>
</p>

## Features

This is a general overview of the features that comes with Clash.  

- Inbound: HTTP, HTTPS, SOCKS5 server, TUN device
- Outbound: Shadowsocks(R), VMess, Trojan, Snell, SOCKS5, HTTP(S), Wireguard
- Rule-based Routing: dynamic scripting, domain, IP addresses, process name and more
- Fake-IP DNS: minimises impact on DNS pollution and improves network performance
- Transparent Proxy: Redirect TCP and TProxy TCP/UDP with automatic route table/rule management
- Proxy Groups: automatic fallback, load balancing or latency testing
- Remote Providers: load remote proxy lists dynamically
- RESTful API: update configuration in-place via a comprehensive API

*Some of the features may only be available in the [Premium core](https://dreamacro.github.io/clash/premium/introduction.html).*

## Compile

### Requirements

- Go >= 1.20
- make

### Compile

- Open *Makefile*;

- Goto line 40, change or add the target platform;

- Open command line

  ```bash
   cd {PATH}/clash-core
   make
  ```

- Packages are in folder *{PATH}/clash-core/bin/*

## Using

- The configuration file would be created after clash first started.

- Configuration file loaction:

  - Windows: *C:\\Users\\{username\}\\.config\\clash\\config.yaml*

  - Linux: ~/.config/clash/config.yaml

### Ubuntu

- https://dev.to/jysperm/setup-clash-redir-proxy-on-a-linux-router-4jnh

#### 使用说明

- config.yaml 文件内容可通过 Clash for Windows 等客户端获取，步骤：

  - 点击 “Profiles”
  - 选中配置文件，右键，选择 “Edit” 或 “Edit externally”
  - 全选复制文件内容
  - 粘贴到 config.yaml

- clash 运行起来后，可能还是无法使用，需要设置代理：

  - 开启（永久生效则将代码放入 ~/.profile 末尾）：
    - export http_proxy=http://127.0.0.1:7890
    - export https_proxy=http://127.0.0.1:7890
  - 关闭：
    - unset http_proxy
    - unset https_proxy

- 设置代理方式：

  - 新建文件 proxy_set：

    ```bash
    # !/bin/bash
    
    # 开启终端代理
    cat > /etc/profile.d/proxy.sh << EOF
    #!/bin/bash
    export http_proxy=http://127.0.0.1:7890
    export https_proxy=http://127.0.0.1:7890
    EOF
    
    source /etc/profile.d/proxy.sh
    ```

  - 新建文件 proxy_unset：

    ```bash
    # !/bin/bash
    
    rm -rf /etc/profile.d/proxy.sh
    unset http_proxy
    unset https_proxy
    ```

  - 使用方法：

    - 开启代理：`. ./proxy_set`
    - 关闭代理：`. ./proxy_unset`

  

## Documentation

- [简介](docs/zh_CN/index.md)

- [编译安装](docs/zh_CN/introduction/getting-started.md)
- [Clash 服务运行](docs/zh_CN/introduction/service.md)
- [配置文件说明](docs/zh_CN/configuration/getting-started.md)
  - [参考配置](docs/zh_CN/configuration/configuration-reference.md)

## Credits

- [riobard/go-shadowsocks2](https://github.com/riobard/go-shadowsocks2)
- [v2ray/v2ray-core](https://github.com/v2ray/v2ray-core)
- [WireGuard/wireguard-go](https://github.com/WireGuard/wireguard-go)

## License

This software is released under the GPL-3.0 license.

[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2FDreamacro%2Fclash.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2FDreamacro%2Fclash?ref=badge_large)
