## docker shell

```shell
#!/bin/bash
docker rm -f polipo
docker run -d --restart=always --name=polipo --net=host siji/polipo proxyAddress=127.0.0.1 socksParentProxy=127.0.0.1:1080 socksProxyType=socks5
```

## 其他配置

编译 ~/.bashrc

```shell
export http_proxy=http://127.0.0.1:8123
export https_proxy=http://127.0.0.1:8123
```
