## 步骤

1. shell 文件

    ```shell
    #!/bin/bash

    CUR_DIR=$PWD

    cp -f /etc/ssh/* $CUR_DIR
    sed -i 's/#Port 22/Port 2222/g' $CUR_DIR/sshd_config
    sed -i 's/#RSAAuthentication yes/RSAAuthentication yes/g' $CUR_DIR/sshd_config
    sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' $CUR_DIR/sshd_config
    sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/g' $CUR_DIR/sshd_config
    sed -i 's#.ssh/authorized_keys#'$CUR_DIR'/authorized_keys#g' $CUR_DIR/sshd_config

    pid=`ps -aux | grep '/usr/sbin/sshd -f '$CUR_DIR'/sshd_config' | grep -v color | awk '!/grep Server/{print $2}'`
    kill -9 $pid
    nohup /usr/sbin/sshd -f $CUR_DIR/sshd_config
    ```


1. authorized_keys 中添加公钥


1. 确保相关目录文件的权限
    - .ssh目录的权限必须是700
    - .ssh/authorized_keys文件权限必须是600

## 防火墙端口开放

- 修改 /etc/rc.d/forword：

  ```shell
  vi /etc/rc.d/forword
  ```


- 添加：

  ```shell
  /sbin/iptables -A INPUT -p tcp --dport 2222 -j ACCEPT
  ```

- 使端口开放

  ```shell
  /etc/rc.d/forword
  ```
