>> Полная структура каталогов:
```
    /opt
    	├── .env
        ├── caddy
        │	 ├── Caddyfile
        │	 └── docker-compose.yml
        ├── element
        │	 ├── config.json
        │	 └── docker-compose.yml
        ├── .env
        ├── jitsi
        │	 └── docker-compose.yml
        ├── postgres
        │	 ├── data
        │	 ├── docker-compose.yml
        │	 └── initdb
        │	     └── 01-init-synapse.sql
        ├── README.md
        ├── .scripts
        │	 ├── check-element.sh
        │	 ├── create-user.sh
        │	 └── initdb.sh
        └── synapse
            ├── data
            │	 ├── homeserver.yaml
            │	 └── matrix.laziza.ru.signing.key
            └── docker-compose.yml
```

>> Команды запуска/остановки/обновления:
    Для запуска необходимо зайти в директорию, соответсвующую сервису,
    например:
    ```cd /opt/element```
    и выполнить:
    ```docker compose up -d```

>> Где лежат логи:  

>> Как добавить администратора Matrix  

>> Как включать/выключать открытую регистрацию  

>> Как обновлять контейнеры.  

>> Список открытых портов и примененных правил UFW/облака  
```
Status: active
Logging: on (low)
Default: deny (incoming), allow (outgoing), deny (routed)
New profiles: skip

To                         Action      From
--                         ------      ----
80/tcp                     ALLOW IN    Anywhere                  
443/tcp                    ALLOW IN    Anywhere                  
8448/tcp                   ALLOW IN    Anywhere                  
10000/udp                  ALLOW IN    Anywhere                  
22/tcp                     ALLOW IN    Anywhere   
```

>> Данные доступа админ-пользователя Matrix (логин, способ смены пароля)  

>> Инструкция по бэкапу: что и чем резервировать (PostgreSQL, ключи Synapse, при необходимости медиа-хранилище)  




