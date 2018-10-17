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

## 防火墙端口开放

- 修改 /etc/rc.d/forword：

  ```shell
  vi /etc/rc.d/forword
  ```


- 添加：

  ```shell
  /sbin/iptables -A INPUT -p tcp --dport 20 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 21 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47400 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47401 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47402 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47403 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47404 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47405 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47406 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47407 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47408 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47409 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47410 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47411 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47412 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47413 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47414 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47415 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47416 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47417 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47418 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47419 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47420 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47421 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47422 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47423 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47424 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47425 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47426 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47427 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47428 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47429 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47430 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47431 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47432 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47433 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47434 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47435 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47436 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47437 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47438 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47439 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47440 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47441 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47442 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47443 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47444 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47445 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47446 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47447 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47448 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47449 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47450 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47451 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47452 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47453 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47454 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47455 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47456 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47457 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47458 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47459 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47460 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47461 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47462 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47463 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47464 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47465 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47466 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47467 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47468 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47469 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47470 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47471 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47472 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47473 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47474 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47475 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47476 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47477 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47478 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47479 -j ACCEPT
  /sbin/iptables -A INPUT -p tcp --dport 47480 -j ACCEPT
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
