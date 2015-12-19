#!/bin/bash

for i in big import medium thumb; do
    mkdir -p /uploads/$i
done

chown -R www-data:www-data /uploads
chmod -R 777 /uploads

chown -R www-data:www-data /data
chmod -R 777 /data

exec "$@"
