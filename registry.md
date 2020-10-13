## docker shell

```shell
#!/bin/bash
docker rm -f registry
docker run -d -p 5000:5000 --restart unless-stopped --user root --name registry -v $PWD/data:/var/lib/registry registry:2
```

## 客户端设置

- 修改 /etc/docker/daemon.json

  ```json
  {
    "insecure-registries" : [ "ip:5000"]
  }
  ```


## 防火墙端口开放

- 修改 /etc/rc.d/forword：

  ```shell
  vi /etc/rc.d/forword
  ```


- 添加：

  ```shell
  /sbin/iptables -A INPUT -p tcp --dport 5000 -j ACCEPT
  ```

- 使端口开放

  ```shell
  /etc/rc.d/forword
  ```
