## docker shell

```shell
#!/bin/bash
docker rm -f gophernotes
docker run -d -p 8888:8888 --restart unless-stopped --user root --name gophernotes -v $PWD/data:/path/to/notebooks/in/docker gopherdata/gophernotes:latest-ds
docker logs gophernotes
```


## 防火墙端口开放

- 修改 /etc/rc.d/forword：

  ```shell
  vi /etc/rc.d/forword
  ```


- 添加：

  ```shell
  /sbin/iptables -A INPUT -p tcp --dport 8888 -j ACCEPT
  ```

- 使端口开放

  ```shell
  /etc/rc.d/forword
  ```
