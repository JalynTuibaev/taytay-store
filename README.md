# Тай-тай
Задача состояла в том, чтобы разработать товаро-учетную систему, рабочее место кассира и интернет-магазин для небольшого магазина одежды.
- Статус разработки: завершен.
- Статус билда: не закончен.
- Покрыто приемочными тестами: 50% проекта.

## Содержание
- [Технологии](#технологии)
- [Разработка](#разработка)
- [Тестирование](#тестирование)
- [Запросы на сервер](#запросы-на-сервер)
- [FAQ](#faq)
- [Команда проекта](#команда-проекта)


## Технологии
- [React](https://ru.reactjs.org/)
- [Redux](https://redux.js.org/)
- [Redux Toolkit](https://redux-toolkit.js.org/)
- [Node.js](https://nodejs.org/en/)
- [Express.js](https://expressjs.com/ru/)
- [MongoDB](https://www.mongodb.com/)
- [Mongoose ODM](https://mongoosejs.com/)

### Дополнительные библиотеки используемые в разработке
- [Axios](https://www.npmjs.com/package/axios) - для запросов на сервер
- [History](https://www.npmjs.com/package/history) - для навигации по проекту
- [Material UI](https://mui.com/) - для UI компонентов админской части.
- [Toastify](https://www.npmjs.com/package/react-toastify) - для всплывающих уведомлений на админской части.
- [MUI DataTables](https://www.npmjs.com/package//mui-datatables) - для создания таблиц учета на админской части.
- [Prettier](https://prettier.io/) - для форматирования кода.


## Разработка

### Требования
Для установки и запуска проекта, необходим [NodeJS](https://nodejs.org/) v16+.

### Установка зависимостей  

#### Клиентская часть

Для установки зависимостей, выполните команду:
```sh
$ npm i --force
```

Для запуска приложения, выполните команду:
```sh
$ npm start
```

#### Серверная часть

Для установки зависимостей, выполните команду:
```sh
$ npm i
```

Для создания фикстур, выполните команду:
```sh
$ npm run seed
```

Для запуска сервера, выполните команду:
```sh
$ npm start
```

## Тестирование
Инструменты используемые для тестирования в проекте:
- [Puppeteer](https://pptr.dev/)
- [Jest](https://jestjs.io/ru/)
- [Gherkin](https://cucumber.io/docs/gherkin/)

Наш проект покрыт приемочными тестами Puppeteer. Для их запуска выполните команду:
```sh
$ ./test.sh
```

## Запросы на сервер

### Users
В проекте не предусмотрена авторизация клиентов магазина.
В базе данных храняться только кассиры и админ.

- GET /users/:id - получить одного кассира.
- POST /users - создать кассира.
- POST /users/sessions - авторизация.
- DELETE /users/sessions - выход из аккаунта.
- POST /forgot-password - отправка письмо на почту с сбросом пароля.
- POST /reset-password/:id/:token - смена пароля.

### Products
Правами для управления товарами обладает администратор.

- GET /products - получение всех товаров для админской части.
- GET /products - получение всех товаров для клиентской части.
- GET /products/search - получение товаров по поиску.
- GET /products/:id - получение одного товара.
- POST /products - создать товар.
- PUT /products/:id - изменить информацию о товаре.
- DELETE / products/:id - удаление одного товара.

### Categories
В категориях предусмотрена бесконечная вложенность.

- GET /categories - получение всех категорий.
- GET /categories/:id - получение одной категории
- POST /categories - создание категории.
- PUT /categories/:id - изменение информации о категории.
- DELETE /categories/:id - удаление одной категории.

### News
В онлайн-магазине есть новости, которые можно редактировать в админской части.

- GET /news - получение всех новостей для админской части. query параметр ?shop=true - получение всех новостей для онлайн-магазина.
- GET /news/:id - получение одной новости.
- POST /news - создание новости.
- POST /news/:id/publish - опубликовать/скрыть новость в онлайн-магазине.
- PUT /news/:id - изменение информации о новости.
- DELETE /news/:id - удаление одной новости.

### Contacts
В контактах хранится информация о магазине: адреса, телефоны, почта, инстаграм.

- GET /contacts - получить информацию о магазине.
- PUT /contacts - изменить информацию о магазине.

### Orders
Все заказы, которые были оформлены в онлайн-магазине.

- GET /orders - получение всех заказов.
- GET /orders/:id - получение одного заказа.
- POST /orders - создание заказа.
- PUT /orders/:id/changeStatus - изменение статуса заказа. (Новый, Собран, Закрыт)

## FAQ
#### Часто задаваемые вопросы:
1. Сколько ушло времени на разработку?
2. Связан ли проект с налоговой службой КР?
3. Сколько учавстовало человек в разработке?
4. С какими трудностями вы сталкивались?

- На разработку ушло 3 месяца, последний месяц больше времени было уделено на тесты и деплой.
- Связать проект с налоговой службой, было основной целью проекта, но к сожалению, для того чтобы подключить налоговую службу, нужно получить спецаиальные разрешния, которых у нас нет.
- 6 человек. 2 тестироващика, 3 фронтенд-разработчика, 1 бэк-енд разработчик.
- По большей части, проблемы были с тестами и поставкой.

## Команда проекта

- [Мовсесян Лера](https://t.me/movlera)
- [Балтиев Владимир](https://t.me/vovvkka)
- [Усенова Элина](https://t.me/eusenova)
- [Туйбаев Жалын](https://t.me/jalyn_tuibaev)
- [Закиров Акбар](https://t.me/Zakirov_1001)
- [Гончаренко Даниил](https://t.me/danchik2022)