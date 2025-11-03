#!/bin/bash

docker exec -it synapse register_new_matrix_user \
    -c /data/homeserver.yaml \
    http://localhost:8008 \
    --admin \
    --user admin \
    --password BJdsfGSFk324nf
