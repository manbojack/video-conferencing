#!/bin/bash

chmod 777 -R /opt/synapse/data

docker exec -i postgres psql -U synapse -d postgres <<EOSQL
-- Удаляем старую базу
DROP DATABASE IF EXISTS synapse;

-- Создаём новую с нужной локалью
CREATE DATABASE synapse
  WITH OWNER synapse
       ENCODING 'UTF8'
       LC_COLLATE='C'
       LC_CTYPE='C'
       TEMPLATE template0;
EOSQL
