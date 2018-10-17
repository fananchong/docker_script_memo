## docker shell

```shell
#!/bin/bash
docker rm -f mysql55
docker run --name=mysql55 -d --restart=always -e MYSQL_ROOT_PASSWORD=your_password -p 3306:3306 -p 33060:33060 -v $PWD/data55:/var/lib/mysql mysql:5.5
```

## 防火墙端口开放

- 修改 /etc/rc.d/forword：

  ```shell
  vi /etc/rc.d/forword
  ```


- 添加：

  ```shell
  /sbin/iptables -A INPUT -p tcp --dport 3306 -j ACCEPT
  ```

- 使端口开放

  ```shell
  /etc/rc.d/forword
  ```
