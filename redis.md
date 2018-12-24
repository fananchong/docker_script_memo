## docker shell

```shell
#!/bin/bash
docker rm -f redis
docker run --name=redis -d --restart=always -p 6379:6379 -v $PWD/data:/data redis redis-server --appendonly yes --bind 0.0.0.0 --protected-mode yes --requirepass 123456
```

## 防火墙端口开放

- 修改 /etc/rc.d/forword：

  ```shell
  vi /etc/rc.d/forword
  ```


- 添加：

  ```shell
  /sbin/iptables -A INPUT -p tcp --dport 6379 -j ACCEPT
  ```

- 使端口开放

  ```shell
  /etc/rc.d/forword
  ```
