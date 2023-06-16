#!/bin/bash


export PGPASSWORD='CSaxAjyQhcJYMVmOvyJ0'
BASEDIR=$(dirname $0)
DATABASE=pokemon_db
psql -h containers-us-west-41.railway.app -U postgres -p 5940 -d railway -f "$BASEDIR/dropdb.sql" &&
#createdb -U postgres $DATABASE &&
psql -h containers-us-west-41.railway.app -U postgres -p 5940 -d railway -f "$BASEDIR/schema.sql" &&
psql -h containers-us-west-41.railway.app -U postgres -p 5940 -d railway -f "$BASEDIR/data.sql" &&
psql -h containers-us-west-41.railway.app -U postgres -p 5940 -d railway -f "$BASEDIR/user.sql"


#