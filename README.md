# Лабораторная работа №3 - REST
Технологии JAX-RS и Spring REST являются двумя популярными фреймворками для реализации RESTful веб-сервисов на Java.

Поскольку фреймворк Spring популярен, легок в освоении и предоставляет широкий спектр инструментов (Spring Data, Security, MVC, + Swagger и OpenAPI), он был выбран для выполнения данной лабораторной работы.

---
## Проверка работоспособности API
Для проверки работоспособности REST API была использована программа Postman. На скриншоте ниже представлен запрос в формате JSON для добавления покупателя (customer) в базу данных. В запросе также передается массив кредитных карт (в данном случае одна карта), поэтому помимо пользователя в базу данных добавляется и кредитная карта.


![postman_add_customer](/assets/postman_add_customer.jpg)

---
## Результат выполнения запроса
На скриншотах снизу представлено обновленное содержимое таблиц Customer и CreditCard после выполнения описанного выше запроса. Можно заметить, что был добавлен один покупатель и одна кредитная карта. Id обоих сущностей определяется автоматически.

![customers](/assets/customers.jpg)

![credit_cards](/assets/credit_cards.jpg)
