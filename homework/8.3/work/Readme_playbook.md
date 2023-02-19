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
- clickhouse_password - пароль clickhouse
- hostvars - системная переменная с facts

> Переменная **ansible_host** находится в [./inventory/test.yml](./inventory/test.yml). По дефолту 192.168.1.239 для каждого из 3-х хостов. 
> При генерации prod.yaml в ansible_host будет подставлен автоматически ip каждой ноды, на котором располагается конкретный процесс (clickhouse/vector/lighthouse)
> 
> Переопределять не нужно

> Переменная **clickhouse_user** находится в role [./roles/clickhouse-role/defaults/main.yml](./roles/clickhouse-role/defaults/main.yml)
> По умолчанию логин (**clickhouse_user**) и пароль (**clickhouse_password**) равен `netology`
> 
> Данные переменные находятся в default, поэтому их можно переопределить
> 
> Про роль clickhouse подробнее в [./roles/clickhouse-role/README.md](./roles/clickhouse-role/README.md)


---

## Tags

