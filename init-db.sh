#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

echo 'Importing data into db $POSTGRES_DB'
psql --username $POSTGRES_USER -d $POSTGRES_DB < /docker-entrypoint-initdb.d/dump/films.sql
echo 'Data import finished successfully'

