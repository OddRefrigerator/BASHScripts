#!/bin/sh

user=kodi
password=TheFlyingFish
hostMysql=192.168.0.107
database=MyVideos116

movieLowerInt=$(echo "SELECT idshow FROM tvshow ORDER BY idshow ASC limit 1;" | mysql -u$user -p$password -h$hostMysql -D$database -s )
movieUpperInt=$(echo "SELECT idshow FROM tvshow ORDER BY idshow DESC limit 1;" | mysql -u$user -p$password -h$hostMysql -D$database -s )



