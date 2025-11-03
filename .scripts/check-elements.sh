# Element указывает на верный homeserver?
curl -fsS https://matrix.laziza.ru/_matrix/client/versions | jq .

# Caddy видит контейнеры
docker logs -f caddy

# Jitsi web жив
docker logs -f jitsi-web

# Видеомост слушает 10000/udp
ss -ulnp | grep 10000