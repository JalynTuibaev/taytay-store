# language: ru
Функционал: добавление товара
  Я логинюсь как пользователь админ и перехожу на главную страницу
  После нажимаю на кнопку администрирование, затем номеклатура и добавить
  Заполняю все поля и нажмимаю на добавить и перехожу на страницу с товарами и вижу свой товар.
  @addProducts
  Сценарий:
    Допустим я захожу на страницу "login"
    Если я введу данные
      | username | admin |
      | password | admin0 |
    И нажимаю на кнопку "Войти"

    Затем я захожу на страницу "admin"
    И перехожу на страницу "admin/products"
    Затем нажимаю на ссылку "Добавить"
    И нажимаю на первый селект в неём выбираю пункт "Одежда"
    Затем ввожу данные
      | title | Шапка |
      | description | Шапка для ребёнка |
      | barcode | 222222 |
      | price | 222 |
      | amount | 5 |
      | purchasePrice | 150 |
    Затем вставляю картинку "./files/beanie.jpg"
    И заполняю оставшиеся поля "#mui-component-select-status"
    Затем нажимаю на кнопку "Добавить"
    Затем перехожу на страницу с товарами и вижу заголовок "Товары"