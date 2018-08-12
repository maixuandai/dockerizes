docker exec mysql mysqldump --user=root --password=nhantrachoc_db --host mysql --result-file /backup/db.$(date +'%Y%m%d').sql --default-character-set=utf8 --single-transaction=TRUE --databases "nhantrachoc_db"

