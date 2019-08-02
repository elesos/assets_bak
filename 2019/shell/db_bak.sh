#!/bin/bash


bak_path="/opt/mysql_bak/"

# 2016/03/
mkdir -p ${bak_path}$(date -d "yesterday" +"%Y")/$(date -d "yesterday" +"%m")/

cd /var/lib/mysql
# YourDatabaseName_20160305.sql
mysqldump -uroot -pYourPassword YourDatabaseName > ${bak_path}$(date -d "yesterday" +"%Y")/$(date -d "yesterday" +"%m")/YourDatabaseName_$(date -d "yesterday" +"%Y%m%d").sql
