sudo docker run -v /app/redis/data:/data --name redis-qa -d -p 6379:6379 redis redis-server /data/redis.conf
