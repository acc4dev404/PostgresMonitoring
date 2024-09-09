# Postgres monitoring

IP: `192.168.1.45`

Run `docker compose up`

Run `docker compose up -d`

Run `docker-compose up --build -d`

View logs `docker compose logs -f`

Commands for docker compose
---

`docker-compose build` — собрать проект

`docker-compose up -d` — запустить проект

`docker-compose down` — остановить проект

`docker-compose logs` -f [service name] — посмотреть логи сервиса

`docker-compose ps` — вывести список контейнеров

`docker-compose exec` [service name] [command» — выполнить команду в 
контейнере

`docker-compose images` — список образов