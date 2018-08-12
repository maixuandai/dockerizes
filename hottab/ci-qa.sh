cd /app/www/consumer.hottab.us/consumer-react
git pull
sudo docker run --rm -v $(pwd):/usr/src/app -w /usr/src/app node:8.11.3 npm install
sudo docker run --rm -v $(pwd):/usr/src/app -w /usr/src/app node:8.11.3 npm run build
sudo docker restart consumer.hottab.us-srv

