#!/bin/bash

# Usage function
usage() {
    echo "Usage: $0 <username> <password>"
    echo "Example: $0 myuser mypassword"
    exit 1
}

# Проверяем, что переданы оба аргумента
if [ $# -ne 2 ]; then
    usage
fi

user=$1
password=$2

echo

curl -s -X POST "https://matrix.laziza.ru/_matrix/client/v3/login" \
  -H "Content-Type: application/json" \
  -d "{
        \"type\": \"m.login.password\",
        \"user\": \"${user}\",
        \"password\": \"${password}\"
      }" | jq

echo
