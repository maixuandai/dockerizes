sudo rm -Rf ./cert/etc/*
sudo rm -Rf ./cert/var/*
sudo docker run -it --rm \
-v /app/cert/etc/letsencrypt:/etc/letsencrypt \
-v /app/cert/var/lib/letsencrypt:/var/lib/letsencrypt \
-v /app/www/html/build:/data/letsencrypt \
-v /app/cert/var/log/letsencrypt:/var/log/letsencrypt \
certbot/certbot \
certonly --webroot \
--email maixuandai@gmail.com --agree-tos --no-eff-email \
--webroot-path=/data/letsencrypt \
-d nhantrachoc.vn



