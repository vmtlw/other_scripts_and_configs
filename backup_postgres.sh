#!/bin/bash

backuppath=/var/calculate/backup/postgresql

find "$backuppath" -type f -mtime +15 -delete &>/dev/null

for db in $(psql -U postgres -A -q -t -c 'select datname from pg_database' template1 |
	grep -v -e '^postgres$' -e '^template1$' -e '^template0$')
do
	fn="${backuppath}/$(date "+%Y%m%d_%H%M")_$db"
	pg_dump -U postgres -Z9 "$db" >${fn}.gz
done
fn="${backuppath}/$(date "+%Y%m%d_%H%M")_roles"
pg_dumpall -r -U postgres >$fn
gzip $fn
