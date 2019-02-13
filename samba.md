
## docker shell

```shell
#!/bin/bash
docker rm -f samba
docker run --name samba -d --restart=always -p 139:139 -p 445:445 -v $PWD/data:/share dperson/samba \
           -s "your_dir_show_name;/share;yes;no;yes;all"
```

## 其他备忘

Window 下键入 `\\ip` 访问


## github

https://github.com/dperson/samba
