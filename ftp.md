## docker shell

```shell
#!/bin/bash
docker rm -f ftp
docker run -d -v $PWD/data:/home/vsftpd \
                -p 20:20 -p 21:21 -p 47400-47470:47400-47470 \
                -e FTP_USER=your_name \
                -e FTP_PASS=your_password \
                -e PASV_ADDRESS=your_ip_address \
                --name ftp \
                --restart=always bogem/ftp
```

OR

```shell
docker run -d -v $PWD/ftp_data:/home/vsftpd -p 21:21 -e FTP_USER=abc -e FTP_PASS=123 -e HOST=localhost -p 65000-65004:65000-65004 -e PASV_MIN_PORT=65000 -e PASV_MAX_PORT=65004 --name ftp --restart=always mcreations/ftp
```


## 防火墙端口开放

- 修改 /etc/rc.d/forword：

  ```shell
  vi /etc/rc.d/forword
  ```


- 添加：

  ```shell
  /sbin/iptables -A INPUT -p tcp --dport 20 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 21 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47400:47470 -j ACCEPT
  ```

- 使端口开放

  ```shell
  /etc/rc.d/forword
  ```


## 其他备忘

```shell
#!/bin/bash
for ((i = 47400; i < 47481; i++)) do
	echo "/sbin/iptables -A INPUT -p tcp --dport "$i" -j ACCEPT"
done
```
