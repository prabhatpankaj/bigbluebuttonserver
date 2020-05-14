# bigbluebuttonserver
```
git clone https://github.com/prabhatpankaj/bigbluebuttonserver.git

cd bigbluebuttonserver

sh bigbluebuttonserver.sh yourdomain.com email@yourdomain.com
```

create admin account

```

docker exec greenlight-v2 bundle exec rake admin:create

```

* redirect http to https
update /etc/nginx/sites-available/bigbluebutton
```

server {
  listen 80;
  listen [::]:80;
  server_name room.aptence.com;
  return 301 https://$host$request_uri;
}

server {
  server_name room.aptence.com;

  listen 443 ssl;
  listen [::]:443 ssl;
  
  ..........
  ..........
  
```

* restart nginx

```
systemctl restart nginx
```
