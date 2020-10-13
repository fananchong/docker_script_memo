## docker shell

```shell
#!/bin/bash

docker rm -f httpd
docker run --name httpd -d --restart=unless-stopped --user root -p 80:80 -v $PWD/data:/usr/local/apache2/htdocs httpd:latest
```
