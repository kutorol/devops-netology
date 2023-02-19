# 08-ansible-03-yandex

Playbook производит установку и настройку clickhouse, vector и lighthouse.

Работает на centos7. После завершения будет выдана строка для подключения к clickhouse. Логин/пароль - netology/netology

### Clickhouse
- установка и настройка clickhouse
- создание базы данных (logs) и таблицы (vector_internal_logs)

### Vector
- установка vector
- изменение конфига приложения

### Lighthouse
- установка lighthouse
- настройка nginx

---

## Variables
- ansible_host - хост, на котором запущен процесс
- clickhouse_user - юзер clickhouse
- hostvars - системная переменная с facts

---

## Tags

