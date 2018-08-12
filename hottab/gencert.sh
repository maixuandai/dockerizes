cd /app
sudo rm -Rf ./cert/etc/*
sudo rm -Rf ./cert/var/*
sudo docker run -it --rm \
-v /app/cert/etc/letsencrypt:/etc/letsencrypt \
-v /app/cert/var/lib/letsencrypt:/var/lib/letsencrypt \
-v /app/www/html/build:/data/letsencrypt \
-v /app/cert/var/log/letsencrypt:/var/log/letsencrypt \
certbot/certbot \
certonly --webroot \
--email daimai@hottab.net --agree-tos --no-eff-email \
--webroot-path=/data/letsencrypt \
-d qa.mxdai.co

sudo docker run -it --rm \
-v /app/cert/etc/letsencrypt:/etc/letsencrypt \
-v /app/cert/var/lib/letsencrypt:/var/lib/letsencrypt \
-v /app/www/html/build:/data/letsencrypt \
-v /app/cert/var/log/letsencrypt:/var/log/letsencrypt \
certbot/certbot \
certonly --webroot \
--email daimai@hottab.net --agree-tos --no-eff-email \
--webroot-path=/data/letsencrypt \
-d stg.hottab.co

sudo docker run -it --rm \
-v /app/cert/etc/letsencrypt:/etc/letsencrypt \
-v /app/cert/var/lib/letsencrypt:/var/lib/letsencrypt \
-v /app/www/html/build:/data/letsencrypt \
-v /app/cert/var/log/letsencrypt:/var/log/letsencrypt \
certbot/certbot \
certonly --webroot \
--email daimai@hottab.net --agree-tos --no-eff-email \
--webroot-path=/data/letsencrypt \
-d consumer.hottab.us

sudo docker run -it --rm \
-v /app/cert/etc/letsencrypt:/etc/letsencrypt \
-v /app/cert/var/lib/letsencrypt:/var/lib/letsencrypt \
-v /app/www/html/build:/data/letsencrypt \
-v /app/cert/var/log/letsencrypt:/var/log/letsencrypt \
certbot/certbot \
certonly --webroot \
--email daimai@hottab.net --agree-tos --no-eff-email \
--webroot-path=/data/letsencrypt \
-d stg-jp-dashboard.hottab.us

sudo docker run -it --rm \
-v /app/cert/etc/letsencrypt:/etc/letsencrypt \
-v /app/cert/var/lib/letsencrypt:/var/lib/letsencrypt \
-v /app/www/html/build:/data/letsencrypt \
-v /app/cert/var/log/letsencrypt:/var/log/letsencrypt \
certbot/certbot \
certonly --webroot \
--email daimai@hottab.net --agree-tos --no-eff-email \
--webroot-path=/data/letsencrypt \
-d consumer.hottab.co

sudo chown -R con-user-qa-01:con-user-qa-01 cert



